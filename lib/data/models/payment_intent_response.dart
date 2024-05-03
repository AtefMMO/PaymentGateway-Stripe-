/// id : "pi_3MtwBwLkdIwHu7ix28a3tqPa"
/// object : "payment_intent"
/// amount : 2000
/// amount_capturable : 0
/// amount_details : {"tip":{}}
/// amount_received : 0
/// application : null
/// application_fee_amount : null
/// automatic_payment_methods : {"enabled":true}
/// canceled_at : null
/// cancellation_reason : null
/// capture_method : "automatic"
/// client_secret : "pi_3MtwBwLkdIwHu7ix28a3tqPa_secret_YrKJUKribcBjcG8HVhfZluoGH"
/// confirmation_method : "automatic"
/// created : 1680800504
/// currency : "usd"
/// customer : null
/// description : null
/// invoice : null
/// last_payment_error : null
/// latest_charge : null
/// livemode : false
/// metadata : {}
/// next_action : null
/// on_behalf_of : null
/// payment_method : null
/// payment_method_options : {"card":{"installments":null,"mandate_options":null,"network":null,"request_three_d_secure":"automatic"},"link":{"persistent_token":null}}
/// payment_method_types : ["card","link"]
/// processing : null
/// receipt_email : null
/// review : null
/// setup_future_usage : null
/// shipping : null
/// source : null
/// statement_descriptor : null
/// statement_descriptor_suffix : null
/// status : "requires_payment_method"
/// transfer_data : null
/// transfer_group : null

class PaymentIntentResponseModel {
  PaymentIntentResponseModel({
      this.id, 
      this.object, 
      this.amount, 
      this.amountCapturable, 
      this.amountDetails, 
      this.amountReceived, 
      this.application, 
      this.applicationFeeAmount, 
      this.automaticPaymentMethods, 
      this.canceledAt, 
      this.cancellationReason, 
      this.captureMethod, 
      this.clientSecret, 
      this.confirmationMethod, 
      this.created, 
      this.currency, 
      this.customer, 
      this.description, 
      this.invoice, 
      this.lastPaymentError, 
      this.latestCharge, 
      this.livemode, 
      this.metadata, 
      this.nextAction, 
      this.onBehalfOf, 
      this.paymentMethod, 
      this.paymentMethodOptions, 
      this.paymentMethodTypes, 
      this.processing, 
      this.receiptEmail, 
      this.review, 
      this.setupFutureUsage, 
      this.shipping, 
      this.source, 
      this.statementDescriptor, 
      this.statementDescriptorSuffix, 
      this.status, 
      this.transferData, 
      this.transferGroup,});

  PaymentIntentResponseModel.fromJson(dynamic json) {
    id = json['id'];
    object = json['object'];
    amount = json['amount'];
    amountCapturable = json['amount_capturable'];
    amountDetails = json['amount_details'] != null ? AmountDetails.fromJson(json['amount_details']) : null;
    amountReceived = json['amount_received'];
    application = json['application'];
    applicationFeeAmount = json['application_fee_amount'];
    automaticPaymentMethods = json['automatic_payment_methods'] != null ? AutomaticPaymentMethods.fromJson(json['automatic_payment_methods']) : null;
    canceledAt = json['canceled_at'];
    cancellationReason = json['cancellation_reason'];
    captureMethod = json['capture_method'];
    clientSecret = json['client_secret'];
    confirmationMethod = json['confirmation_method'];
    created = json['created'];
    currency = json['currency'];
    customer = json['customer'];
    description = json['description'];
    invoice = json['invoice'];
    lastPaymentError = json['last_payment_error'];
    latestCharge = json['latest_charge'];
    livemode = json['livemode'];
    metadata = json['metadata'];
    nextAction = json['next_action'];
    onBehalfOf = json['on_behalf_of'];
    paymentMethod = json['payment_method'];
    paymentMethodOptions = json['payment_method_options'] != null ? PaymentMethodOptions.fromJson(json['payment_method_options']) : null;
    paymentMethodTypes = json['payment_method_types'] != null ? json['payment_method_types'].cast<String>() : [];
    processing = json['processing'];
    receiptEmail = json['receipt_email'];
    review = json['review'];
    setupFutureUsage = json['setup_future_usage'];
    shipping = json['shipping'];
    source = json['source'];
    statementDescriptor = json['statement_descriptor'];
    statementDescriptorSuffix = json['statement_descriptor_suffix'];
    status = json['status'];
    transferData = json['transfer_data'];
    transferGroup = json['transfer_group'];
  }
  String? id;
  String? object;
  int? amount;
  int? amountCapturable;
  AmountDetails? amountDetails;
  int? amountReceived;
  dynamic application;
  dynamic applicationFeeAmount;
  AutomaticPaymentMethods? automaticPaymentMethods;
  dynamic canceledAt;
  dynamic cancellationReason;
  String? captureMethod;
  String? clientSecret;
  String? confirmationMethod;
  int? created;
  String? currency;
  dynamic customer;
  dynamic description;
  dynamic invoice;
  dynamic lastPaymentError;
  dynamic latestCharge;
  bool? livemode;
  dynamic metadata;
  dynamic nextAction;
  dynamic onBehalfOf;
  dynamic paymentMethod;
  PaymentMethodOptions? paymentMethodOptions;
  List<String>? paymentMethodTypes;
  dynamic processing;
  dynamic receiptEmail;
  dynamic review;
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  String? status;
  dynamic transferData;
  dynamic transferGroup;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['object'] = object;
    map['amount'] = amount;
    map['amount_capturable'] = amountCapturable;
    if (amountDetails != null) {
      map['amount_details'] = amountDetails?.toJson();
    }
    map['amount_received'] = amountReceived;
    map['application'] = application;
    map['application_fee_amount'] = applicationFeeAmount;
    if (automaticPaymentMethods != null) {
      map['automatic_payment_methods'] = automaticPaymentMethods?.toJson();
    }
    map['canceled_at'] = canceledAt;
    map['cancellation_reason'] = cancellationReason;
    map['capture_method'] = captureMethod;
    map['client_secret'] = clientSecret;
    map['confirmation_method'] = confirmationMethod;
    map['created'] = created;
    map['currency'] = currency;
    map['customer'] = customer;
    map['description'] = description;
    map['invoice'] = invoice;
    map['last_payment_error'] = lastPaymentError;
    map['latest_charge'] = latestCharge;
    map['livemode'] = livemode;
    map['metadata'] = metadata;
    map['next_action'] = nextAction;
    map['on_behalf_of'] = onBehalfOf;
    map['payment_method'] = paymentMethod;
    if (paymentMethodOptions != null) {
      map['payment_method_options'] = paymentMethodOptions?.toJson();
    }
    map['payment_method_types'] = paymentMethodTypes;
    map['processing'] = processing;
    map['receipt_email'] = receiptEmail;
    map['review'] = review;
    map['setup_future_usage'] = setupFutureUsage;
    map['shipping'] = shipping;
    map['source'] = source;
    map['statement_descriptor'] = statementDescriptor;
    map['statement_descriptor_suffix'] = statementDescriptorSuffix;
    map['status'] = status;
    map['transfer_data'] = transferData;
    map['transfer_group'] = transferGroup;
    return map;
  }

}

/// card : {"installments":null,"mandate_options":null,"network":null,"request_three_d_secure":"automatic"}
/// link : {"persistent_token":null}

class PaymentMethodOptions {
  PaymentMethodOptions({
      this.card, 
      this.link,});

  PaymentMethodOptions.fromJson(dynamic json) {
    card = json['card'] != null ? Card.fromJson(json['card']) : null;
    link = json['link'] != null ? Link.fromJson(json['link']) : null;
  }
  Card? card;
  Link? link;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (card != null) {
      map['card'] = card?.toJson();
    }
    if (link != null) {
      map['link'] = link?.toJson();
    }
    return map;
  }

}

/// persistent_token : null

class Link {
  Link({
      this.persistentToken,});

  Link.fromJson(dynamic json) {
    persistentToken = json['persistent_token'];
  }
  dynamic persistentToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['persistent_token'] = persistentToken;
    return map;
  }

}

/// installments : null
/// mandate_options : null
/// network : null
/// request_three_d_secure : "automatic"

class Card {
  Card({
      this.installments, 
      this.mandateOptions, 
      this.network, 
      this.requestThreeDSecure,});

  Card.fromJson(dynamic json) {
    installments = json['installments'];
    mandateOptions = json['mandate_options'];
    network = json['network'];
    requestThreeDSecure = json['request_three_d_secure'];
  }
  dynamic installments;
  dynamic mandateOptions;
  dynamic network;
  String? requestThreeDSecure;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['installments'] = installments;
    map['mandate_options'] = mandateOptions;
    map['network'] = network;
    map['request_three_d_secure'] = requestThreeDSecure;
    return map;
  }

}

/// enabled : true

class AutomaticPaymentMethods {
  AutomaticPaymentMethods({
      this.enabled,});

  AutomaticPaymentMethods.fromJson(dynamic json) {
    enabled = json['enabled'];
  }
  bool? enabled;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

}

/// tip : {}

class AmountDetails {
  AmountDetails({
      this.tip,});

  AmountDetails.fromJson(dynamic json) {
    tip = json['tip'];
  }
  dynamic tip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tip'] = tip;
    return map;
  }

}