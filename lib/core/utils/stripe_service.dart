import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/core/utils/api_keys.dart';
import 'package:payment_gateway/core/utils/api_service.dart';
import 'package:payment_gateway/data/models/ephemeral_key_model.dart';
import 'package:payment_gateway/data/models/payment_intent_response.dart';
import 'package:payment_gateway/data/models/payment_intent_input.dart';
import 'package:payment_gateway/data/models/stripe_customer_input_model.dart';

class StripeServices {
  //create payment intent which returns payment intent object
  //initialize payment sheet pass to it payment intent client secret
  //present payment sheet
  final ApiService apiService = ApiService();
  Future<PaymentIntentResponseModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel,
      StripeCustomerInputModel stripeCustomerInputModel) async {
    var response = await apiService.post(
        contentType: Headers.formUrlEncodedContentType,
        data: paymentIntentInputModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys
            .secretKey); //normally you should get the token from server side

    var paymentIntentModelResponse =
        PaymentIntentResponseModel.fromJson(response.data);
    return paymentIntentModelResponse;
  }

  Future initPaymentSheet(
      {required PaymentIntentResponseModel paymentIntentResponseModel,
      required StripeCustomerInputModel stripeCustomerInputModel,
      required EphemeralKeyModel ephemeralKeyModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: paymentIntentResponseModel.clientSecret,
            merchantDisplayName: 'Mohamed',
            customerId: stripeCustomerInputModel.id,
            customerEphemeralKeySecret: ephemeralKeyModel.secret));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    StripeCustomerInputModel stripeCustomerInputModel =
        StripeCustomerInputModel();
    stripeCustomerInputModel.id = paymentIntentInputModel.customerId;
    //this should come from the database you saved user data in
    var paymentIntentModel = await createPaymentIntent(
        paymentIntentInputModel, stripeCustomerInputModel);

    var ephemeralKeyModel = await createEphemeralKey(stripeCustomerInputModel);
    await initPaymentSheet(
      //must always use await even if you don't think you need it if you are going to call something after this you must use it
      stripeCustomerInputModel: stripeCustomerInputModel,
      ephemeralKeyModel: ephemeralKeyModel,
      paymentIntentResponseModel: paymentIntentModel,
    );
    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      StripeCustomerInputModel stripeCustomerInputModel) async {
    var response = await apiService.post(
        data: {'customer': stripeCustomerInputModel.id},
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        headers: {
          'Authorization': 'Bearer ${ApiKeys.secretKey}',
          'Stripe-Version': '2024-04-10',
        },
        token: ApiKeys.secretKey,
        contentType: Headers.formUrlEncodedContentType);
    var ephemeralKeyResponse = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKeyResponse;
  }
}
