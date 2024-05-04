import 'package:dartz/dartz.dart';
import 'package:payment_gateway/core/errors/failures.dart';
import 'package:payment_gateway/core/utils/stripe_service.dart';
import 'package:payment_gateway/data/models/payment_intent_input.dart';
import 'package:payment_gateway/data/models/stripe_customer_input_model.dart';
import 'package:payment_gateway/data/repos/checkout_repo.dart';

class CheckoutRepoImplementation extends CheckoutRepo {
  final StripeServices stripeServices = StripeServices();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeServices.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
