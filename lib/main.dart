import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:payment_gateway/core/utils/api_keys.dart';

void main() {
  Stripe.publishableKey=ApiKeys.publishableKey;
  runApp(const CheckoutApp());
}
class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: MyCartView(),
    );
  }
}
