part of truecollaboration.telegram_bot.models;

/// Represents the [content] of a venue message to be sent as the result of an inline query.
///
/// https://core.telegram.org/bots/api#inputvenuemessagecontent
///
/// [content]: https://core.telegram.org/bots/api#inputmessagecontent
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputVenueMessageContent extends InputMessageContent {
  double latitude;
  double longitude;
  String title;
  String address;
  String? foursquareId;
  String? foursquareType;
  String? googlePlaceId;
  String? googlePlaceType;
  InputVenueMessageContent({
    required this.latitude,
    required this.longitude,
    required this.title,
    required this.address,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
  });
  
  factory InputVenueMessageContent.fromJson(JsonObjectEx json) => _$InputVenueMessageContentFromJson(json);
  JsonObjectEx toJson() => _$InputVenueMessageContentToJson(this);
}
