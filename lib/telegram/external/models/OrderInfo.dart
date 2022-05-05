part of truecollaboration.telegram_bot.models;

/// This object represents information about an order.
///
/// https://core.telegram.org/bots/api#orderinfo
@JsonSerializableEx(fieldRename: FieldRename.snake)
class OrderInfo extends ITelegramModel {
  String? name;
  String? phoneNumber;
  String? email;
  ShippingAddress? shippingAddress;
  OrderInfo({
    this.name,
    this.phoneNumber,
    this.email,
    this.shippingAddress,
  });
  
  factory OrderInfo.fromJson(JsonObjectEx json) => _$OrderInfoFromJson(json);
  JsonObjectEx toJson() => _$OrderInfoToJson(this);
}