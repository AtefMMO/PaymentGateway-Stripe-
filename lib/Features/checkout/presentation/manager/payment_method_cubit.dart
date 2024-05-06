import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'payment_method_state.dart';

class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  PaymentMethodCubit() : super(PaymentMethodState(paymentMethod: '', activeIndex: 0));

  void getPaymentMethod(int index) {
    if (state.activeIndex == index) {
      return;
    }

    String paymentMethod = index == 0 ? 'visa' : 'paypal';
    emit(PaymentMethodState(paymentMethod: paymentMethod, activeIndex: index));
  }
}
