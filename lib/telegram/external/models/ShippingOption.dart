part of truecollaboration.telegram_bot.models;

/// This object represents one shipping option.
///
/// https://core.telegram.org/bots/api#shippingoption
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ShippingOption extends ITelegramModel {
  String id;
  String title;
  List<LabeledPrice> prices;
  ShippingOption({
    required this.id,
    required this.title,
    required this.prices,
  });
  
  factory ShippingOption.fromJson(JsonObjectEx json) => _$ShippingOptionFromJson(json);
  JsonObjectEx toJson() => _$ShippingOptionToJson(this);
}
