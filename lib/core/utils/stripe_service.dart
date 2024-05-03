

import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/core/utils/api_keys.dart';
import 'package:payment_gateway/core/utils/api_service.dart';
import 'package:payment_gateway/data/models/payment_intent_response.dart';
import 'package:payment_gateway/data/models/payment_intent_input.dart';

class StripeServices {
  //create payment intent which returns payment intent object
  //initialize payment sheet pass to it payment intent client secret
  //present payment sheet
  final ApiService apiService = ApiService();
  Future<PaymentIntentResponseModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        contentType:Headers.formUrlEncodedContentType,
        data: paymentIntentInputModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys
            .secretKey); //normally you should get the token from server side

    var paymentIntentModelResponse =
        PaymentIntentResponseModel.fromJson(response.data);
    return paymentIntentModelResponse;
  }

  Future initPaymentSheet(
      {required String paymentIntentClientSecret, String? merchantName}) async {
   await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: paymentIntentClientSecret,
            merchantDisplayName: 'Atef'));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(//must always use await even if you don't think you need it if you are going to call something after this you must use it
        paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
}
