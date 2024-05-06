import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_gateway/Features/checkout/presentation/manager/payment_method_cubit.dart';
import 'package:payment_gateway/core/widgets/payment_mthod_item.dart';

class PaymentMethodView extends StatelessWidget {
  final List<String> paymentMethodItems = [
    'assets/images/card.png',
    'assets/images/paypal.png'
  ];

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
                BlocProvider.of<PaymentMethodCubit>(context)
                    .getPaymentMethod(index);
              },
              child: BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
                builder: (context, state) {
                  return PaymentMethodItem(
                    image: paymentMethodItems[index],
                    isActive: state.activeIndex == index,
                  );
                },
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
