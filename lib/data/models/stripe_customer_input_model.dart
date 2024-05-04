/// id : "cus_Q2qtLClLP0giYr"
/// object : "customer"
/// address : null
/// balance : 0
/// created : 1714839131
/// currency : null
/// default_source : null
/// delinquent : false
/// description : null
/// discount : null
/// email : "mohamedatef@gmail.com"
/// invoice_prefix : "063F26E1"
/// invoice_settings : {"custom_fields":null,"default_payment_method":null,"footer":null,"rendering_options":null}
/// livemode : false
/// metadata : {}
/// name : "Mohamed"
/// next_invoice_sequence : 1
/// phone : null
/// preferred_locales : []
/// shipping : null
/// tax_exempt : "none"
/// test_clock : null

class StripeCustomerInputModel {
  StripeCustomerInputModel({
    this.id,
    this.object,
    this.address,
    this.balance,
    this.created,
    this.currency,
    this.defaultSource,
    this.delinquent,
    this.description,
    this.discount,
    this.email,
    this.invoicePrefix,
    this.invoiceSettings,
    this.livemode,
    this.metadata,
    this.name,
    this.nextInvoiceSequence,
    this.phone,
    this.shipping,
    this.taxExempt,
    this.testClock,
  });

  StripeCustomerInputModel.fromJson(dynamic json) {
    id = json['id'];
    object = json['object'];
    address = json['address'];
    balance = json['balance'];
    created = json['created'];
    currency = json['currency'];
    defaultSource = json['default_source'];
    delinquent = json['delinquent'];
    description = json['description'];
    discount = json['discount'];
    email = json['email'];
    invoicePrefix = json['invoice_prefix'];
    invoiceSettings = json['invoice_settings'] != null
        ? InvoiceSettings.fromJson(json['invoice_settings'])
        : null;
    livemode = json['livemode'];
    metadata = json['metadata'];
    name = json['name'];
    nextInvoiceSequence = json['next_invoice_sequence'];
    phone = json['phone'];

    shipping = json['shipping'];
    taxExempt = json['tax_exempt'];
    testClock = json['test_clock'];
  }
  String? id;
  String? object;
  dynamic address;
  int? balance;
  int? created;
  dynamic currency;
  dynamic defaultSource;
  bool? delinquent;
  dynamic description;
  dynamic discount;
  String? email;
  String? invoicePrefix;
  InvoiceSettings? invoiceSettings;
  bool? livemode;
  dynamic metadata;
  String? name;
  int? nextInvoiceSequence;
  dynamic phone;

  dynamic shipping;
  String? taxExempt;
  dynamic testClock;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['object'] = object;
    map['address'] = address;
    map['balance'] = balance;
    map['created'] = created;
    map['currency'] = currency;
    map['default_source'] = defaultSource;
    map['delinquent'] = delinquent;
    map['description'] = description;
    map['discount'] = discount;
    map['email'] = email;
    map['invoice_prefix'] = invoicePrefix;
    if (invoiceSettings != null) {
      map['invoice_settings'] = invoiceSettings?.toJson();
    }
    map['livemode'] = livemode;
    map['metadata'] = metadata;
    map['name'] = name;
    map['next_invoice_sequence'] = nextInvoiceSequence;
    map['phone'] = phone;

    map['shipping'] = shipping;
    map['tax_exempt'] = taxExempt;
    map['test_clock'] = testClock;
    return map;
  }
}

/// custom_fields : null
/// default_payment_method : null
/// footer : null
/// rendering_options : null

class InvoiceSettings {
  InvoiceSettings({
    this.customFields,
    this.defaultPaymentMethod,
    this.footer,
    this.renderingOptions,
  });

  InvoiceSettings.fromJson(dynamic json) {
    customFields = json['custom_fields'];
    defaultPaymentMethod = json['default_payment_method'];
    footer = json['footer'];
    renderingOptions = json['rendering_options'];
  }
  dynamic customFields;
  dynamic defaultPaymentMethod;
  dynamic footer;
  dynamic renderingOptions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['custom_fields'] = customFields;
    map['default_payment_method'] = defaultPaymentMethod;
    map['footer'] = footer;
    map['rendering_options'] = renderingOptions;
    return map;
  }
}
