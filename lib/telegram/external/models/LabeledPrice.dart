part of truecollaboration.telegram_bot.models;

/// This object represents a portion of the price for goods or services.
///
/// https://core.telegram.org/bots/api#labeledprice
@JsonSerializableEx(fieldRename: FieldRename.snake)
class LabeledPrice extends ITelegramModel {
  String label;
  int amount;
  LabeledPrice({
    required this.label,
    required this.amount,
  });
  
  factory LabeledPrice.fromJson(JsonObjectEx json) => _$LabeledPriceFromJson(json);
  JsonObjectEx toJson() => _$LabeledPriceToJson(this);
}
