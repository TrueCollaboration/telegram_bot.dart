part of truecollaboration.telegram_bot.models;

/// This object contains basic information about a successful payment.
///
/// https://core.telegram.org/bots/api#successfulpayment
@JsonSerializableEx(fieldRename: FieldRename.snake)
class SuccessfulPayment extends ITelegramModel {
  String currency;
  int totalAmount;
  String invoicePayload;
  String? shippingOptionId;
  OrderInfo? orderInfo;
  String telegramPaymentChargeId;
  String providerPaymentChargeId;
  SuccessfulPayment({
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });
  
  factory SuccessfulPayment.fromJson(JsonObjectEx json) => _$SuccessfulPaymentFromJson(json);
  JsonObjectEx toJson() => _$SuccessfulPaymentToJson(this);
}
