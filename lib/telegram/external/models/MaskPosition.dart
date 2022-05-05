part of truecollaboration.telegram_bot.models;

/// This object describes the position on faces where a mask should be placed by default.
///
/// https://core.telegram.org/bots/api#maskposition
@JsonSerializableEx(fieldRename: FieldRename.snake)
class MaskPosition extends ITelegramModel {
  String point;
  double xShift;
  double yShift;
  double scale;
  MaskPosition({
    required this.point,
    required this.xShift,
    required this.yShift,
    required this.scale,
  });
  
  factory MaskPosition.fromJson(JsonObjectEx json) => _$MaskPositionFromJson(json);
  JsonObjectEx toJson() => _$MaskPositionToJson(this);
}
