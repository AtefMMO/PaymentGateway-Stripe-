import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';
import 'package:payment_gateway/core/widgets/custom_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Expanded(child: Image.asset('assets/images/basket.png')),
          const SizedBox(
            height: 25,
          ),
          const OrderInfo(
            item: 'Order Subtotal',
            value: '2.99',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfo(
            item: 'Discount',
            value: '0.99',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfo(
            item: 'Shipping',
            value: '0.99',
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Colors.black38))),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          const TotalValue(item: 'Total', value: r'$2.00'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(value: 'Complete Payment',function: (){},),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}



class OrderInfo extends StatelessWidget {
  final String item, value;
  const OrderInfo({super.key, required this.item, required this.value});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          item,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          '$value \$',
          style: Styles.style18,
        ),
      ],
    );
  }
}

class TotalValue extends StatelessWidget {
  final String item, value;
  const TotalValue({super.key, required this.item, required this.value});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          item,
          style: Styles.style24,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.style24,
        ),
      ],
    );
  }
}
