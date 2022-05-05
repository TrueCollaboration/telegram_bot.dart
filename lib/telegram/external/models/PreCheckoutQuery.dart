part of truecollaboration.telegram_bot.models;

/// This object contains information about an incoming pre-checkout query.
///
/// https://core.telegram.org/bots/api#precheckoutquery
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PreCheckoutQuery extends ITelegramModel {
  String id;
  User from;
  String currency;
  int totalAmount;
  String invoicePayload;
  String? shippingOptionId;
  OrderInfo? orderInfo;
  PreCheckoutQuery({
    required this.id,
    required this.from,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
  });
  
  factory PreCheckoutQuery.fromJson(JsonObjectEx json) => _$PreCheckoutQueryFromJson(json);
  JsonObjectEx toJson() => _$PreCheckoutQueryToJson(this);
}
