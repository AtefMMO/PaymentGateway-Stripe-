import 'package:flutter/material.dart';
import 'package:payment_gateway/core/widgets/payment_mthod_item.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
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
