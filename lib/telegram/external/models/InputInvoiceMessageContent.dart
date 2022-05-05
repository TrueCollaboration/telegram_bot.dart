part of truecollaboration.telegram_bot.models;

/// Represents the [content] of an invoice message to be sent as the result of an inline query.
///
/// https://core.telegram.org/bots/api#inputinvoicemessagecontent
///
/// [content]: https://core.telegram.org/bots/api#inputmessagecontent
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputInvoiceMessageContent extends InputMessageContent {
  String title;
  String description;
  String payload;
  String providerToken;
  String currency;
  List<LabeledPrice> prices;
  int? maxTipAmount;
  List<int>? suggestedTipAmounts;
  String? providerData;
  String? photoUrl;
  int? photoSize;
  int? photoWidth;
  int? photoHeight;
  bool? needName;
  bool? needPhoneNumber;
  bool? needEmail;
  bool? needShippingAddress;
  bool? sendPhoneNumberToProvider;
  bool? sendEmailToProvider;
  bool? isFlexible;

  InputInvoiceMessageContent({
    required this.title,
    required this.description,
    required this.payload,
    required this.providerToken,
    required this.currency,
    required this.prices,
    this.maxTipAmount,
    this.suggestedTipAmounts,
    this.providerData,
    this.photoSize,
    this.photoWidth,
    this.photoHeight,
    this.needName,
    this.needPhoneNumber,
    this.needEmail,
    this.needShippingAddress,
    this.sendPhoneNumberToProvider,
    this.sendEmailToProvider,
    this.isFlexible,
  });
  
  factory InputInvoiceMessageContent.fromJson(JsonObjectEx json) => _$InputInvoiceMessageContentFromJson(json);
  JsonObjectEx toJson() => _$InputInvoiceMessageContentToJson(this);
}
