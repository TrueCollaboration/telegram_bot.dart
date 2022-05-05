part of truecollaboration.telegram_bot.models;

/// This object represents a venue.
///
/// https://core.telegram.org/bots/api#venue
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Venue extends ITelegramModel {
  Location location;
  String title;
  String address;
  String? foursquareId;
  String? foursquareType;
  String? googlePlaceId;
  String? googlePlaceType;
  Venue({
    required this.location,
    required this.title,
    required this.address,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
  });
  
  factory Venue.fromJson(JsonObjectEx json) => _$VenueFromJson(json);
  JsonObjectEx toJson() => _$VenueToJson(this);
}
