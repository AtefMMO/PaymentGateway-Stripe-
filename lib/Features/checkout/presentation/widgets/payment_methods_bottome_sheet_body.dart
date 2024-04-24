import 'package:flutter/material.dart';
import 'package:payment_gateway/core/widgets/payment_mthod_item.dart';

class PaymentMethodView extends StatefulWidget {
  const PaymentMethodView({super.key});

  @override
  State<PaymentMethodView> createState() => _PaymentMethodViewState();
}

class _PaymentMethodViewState extends State<PaymentMethodView> {
  final List<String> paymentMethodItems = [
    'assets/images/card.png',
    'assets/images/paypal.png'
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: PaymentMethodItem(
                image: paymentMethodItems[index],
                isActive: activeIndex == index ? true : false,
              ),
            ),
          );
        },
        itemCount: paymentMethodItems.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
