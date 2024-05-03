part of 'payment_cubit.dart';

@immutable
abstract class PaymentState {}

final class PaymentInitialState extends PaymentState {}

final class PaymentSuccessState extends PaymentState {}

final class PaymentFailureState extends PaymentState {
  final String errMessage;

  PaymentFailureState(this.errMessage);
}

final class PaymentLoadingState extends PaymentState {}
