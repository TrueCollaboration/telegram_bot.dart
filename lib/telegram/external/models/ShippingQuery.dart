part of truecollaboration.telegram_bot.models;

/// This object contains information about an incoming shipping query.
///
/// https://core.telegram.org/bots/api#shippingquery
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ShippingQuery extends ITelegramModel {
  String id;
  User from;
  String invoicePayload;
  ShippingAddress shippingAddress;
  ShippingQuery({
    required this.id,
    required this.from,
    required this.invoicePayload,
    required this.shippingAddress,
  });
  
  factory ShippingQuery.fromJson(JsonObjectEx json) => _$ShippingQueryFromJson(json);
  JsonObjectEx toJson() => _$ShippingQueryToJson(this);
}