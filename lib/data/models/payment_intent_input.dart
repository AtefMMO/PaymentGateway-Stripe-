class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final String customerId;
  PaymentIntentInputModel(
      {required this.amount, required this.currency, required this.customerId});
  toJson() {
    return {'amount': amount, 'currency': currency, 'customer': customerId};
  }
  //remember stripe divides amount by 100 so when taking the amount multibly it by 100
}
