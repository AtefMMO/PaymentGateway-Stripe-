import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_gateway/Features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_gateway/Features/checkout/presentation/widgets/payment_methods_bottome_sheet_body.dart';

import 'package:payment_gateway/core/widgets/custom_button_bloc_consumer.dart';
import 'package:payment_gateway/data/repos/checkout_repo_impl.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodView(),
          SizedBox(height: 32,),
          BlocProvider(
            create: (context) => PaymentCubit(CheckoutRepoImplementation()),
            child: CustomButtonBlocConsumer(),
          ),
        ],
      ),
    );
  }
}