import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_gateway/Features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_gateway/Features/checkout/presentation/views/payment_method_bottom_sheet.dart';
import 'package:payment_gateway/core/widgets/custom_button.dart';
import 'package:payment_gateway/data/models/payment_intent_input.dart';
import 'package:payment_gateway/data/repos/checkout_repo_impl.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
       if(state is PaymentSuccessState){
         Navigator.pop(context);
         SnackBar snackBar = const SnackBar(content: Text('Payment Success'));
         ScaffoldMessenger.of(context).showSnackBar(snackBar);
       }
       if(state is PaymentFailureState){
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
            PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(amount: '400', currency: 'usd');
            BlocProvider.of<PaymentCubit>(context).makePayment(paymentIntentInputModel:paymentIntentInputModel );
          },
        );
      },
    );
  }
}
