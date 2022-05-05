part of truecollaboration.telegram_bot.models;

/// This object represents a point on the map.
///
/// https://core.telegram.org/bots/api#location
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Location extends ITelegramModel {
  double longitude;
  double latitude;
  double? horizontalAccuracy;
  int? livePeriod;
  int? heading;
  int? proximityAlertRadius;
  Location({
    required this.longitude,
    required this.latitude,
    this.horizontalAccuracy,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
  });
  
  factory Location.fromJson(JsonObjectEx json) => _$LocationFromJson(json);
  JsonObjectEx toJson() => _$LocationToJson(this);
}