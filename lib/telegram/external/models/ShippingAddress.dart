part of truecollaboration.telegram_bot.models;

/// This object represents a shipping address.
///
/// https://core.telegram.org/bots/api#shippingaddress
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ShippingAddress extends ITelegramModel {
  String countryCode;
  String state;
  String city;
  String streetLine1;
  String streetLine2;
  String postCode;
  ShippingAddress({
    required this.countryCode,
    required this.state,
    required this.city,
    required this.streetLine1,
    required this.streetLine2,
    required this.postCode,
  });
  
  factory ShippingAddress.fromJson(JsonObjectEx json) => _$ShippingAddressFromJson(json);
  JsonObjectEx toJson() => _$ShippingAddressToJson(this);
}
