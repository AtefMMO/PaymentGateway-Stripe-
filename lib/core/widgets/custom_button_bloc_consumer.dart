import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_gateway/Features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_gateway/Features/checkout/presentation/manager/payment_method_cubit.dart';

import 'package:payment_gateway/core/widgets/custom_button.dart';
import 'package:payment_gateway/data/models/payment_intent_input.dart';

import 'package:payment_gateway/data/models/paypal_amount_model.dart';
import 'package:payment_gateway/data/models/paypal_item_model.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccessState) {
          Navigator.pop(context);
          SnackBar snackBar = const SnackBar(content: Text('Payment Success'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        if (state is PaymentFailureState) {
          Navigator.pop(context);
          SnackBar snackBar = SnackBar(content: Text(state.errMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is PaymentLoadingState ? true : false,
          value: 'Continue',
          function: () {
            if (BlocProvider.of<PaymentMethodCubit>(context)
                    .state
                    .paymentMethod ==
                'visa') {
              PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(
                amount: '400',
                currency: 'usd',
                customerId: 'cus_Q2vHT3Vh3NRYd8',
              );
              BlocProvider.of<PaymentCubit>(context).makePayment(
                  paymentIntentInputModel: paymentIntentInputModel);
            } else {
              var amount = PaypalAmountModel(
                  currency: 'USD',
                  details: Details(
                      shipping: '0', shippingDiscount: 0, subtotal: '4'),
                  total: '4');
              List<PaypalItem> orders = [
                PaypalItem(
                    currency: 'USD', price: '4', name: 'Chicken', quantity: 1),
                PaypalItem(
                    currency: 'USD', price: '8', name: 'burger', quantity: 1)
              ]; //list of items should come from cart
              var items = PaypalItemModel(items: orders);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => PaypalCheckoutView(
                  sandboxMode: true,
                  clientId:
                      "AQRkWtYviZuMAJkQ5MxzN3BYnZv82pTI2vUf0Dc2UH1o9yVDlqhG5Qup-USxvLk-FGU0XHHzaR_ZWX0s",
                  secretKey:
                      "ENampXVMqirJuSFJxGGtPbBMXZsSJOGhMxwNY9mBTpz9rd96V9HtNPanCcTlel6QdhaqXeP-Srz08izU",
                  transactions: [
                    {
                      "amount": amount.toJson(),
                      "items": items.toJson(),
                      "description": "The payment transaction description.",
                    }
                  ],
                  note: "Contact us for any questions on your order.",
                  onSuccess: (Map params) async {
                    log("onSuccess: $params");
                    Navigator.pop(context);
                    Navigator.pop(context);
                    SnackBar snackBar = SnackBar(
                        content: Text(
                      'success',
                    ));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  onError: (error) {
                    log("onError: $error");
                    Navigator.pop(context);
                    Navigator.pop(context);
                    SnackBar snackBar = SnackBar(content: Text(error));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  onCancel: () {
                    print('cancelled:');
                    Navigator.pop(context);
                  },
                ),
              ));
            }
          },
        );
      },
    );
  }
}
