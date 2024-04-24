import 'package:flutter/material.dart';
import 'package:payment_gateway/Features/checkout/presentation/widgets/payment_methods_bottome_sheet_body.dart';
import 'package:payment_gateway/core/widgets/custom_button.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PaymentDetailsView(),
          const SizedBox(height: 32,),
          CustomButton(
            value: 'Continue',
            function: () {},
          ),

        ],
      ),
    );
  }
}