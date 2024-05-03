class PaymentIntentInputModel{
  final String amount;
  final String currency;
  PaymentIntentInputModel({required this.amount,required this.currency});
  toJson(){
    return {
      'amount':  amount,
      'currency':  currency
    };
  }
  //remember stripe divides amount by 100 so when taking the amount multibly it by 100
}