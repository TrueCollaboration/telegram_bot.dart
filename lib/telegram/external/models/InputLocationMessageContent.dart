part of truecollaboration.telegram_bot.models;

/// Represents the [content] of a location message to be sent as the result of an inline query.
///
/// https://core.telegram.org/bots/api#inputlocationmessagecontent
///
/// [content]: https://core.telegram.org/bots/api#inputmessagecontent
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputLocationMessageContent extends InputMessageContent {
  double latitude;
  double longitude;
  double? horizontalAccuracy;
  int? livePeriod;
  int? heading;
  int? proximityAlertRadius;

  InputLocationMessageContent({
    required this.latitude,
    required this.longitude,
    this.horizontalAccuracy,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
  });
  
  factory InputLocationMessageContent.fromJson(JsonObjectEx json) => _$InputLocationMessageContentFromJson(json);
  JsonObjectEx toJson() => _$InputLocationMessageContentToJson(this);
}
