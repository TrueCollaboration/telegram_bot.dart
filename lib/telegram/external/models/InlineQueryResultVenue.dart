part of truecollaboration.telegram_bot.models;

/// Represents a venue.
/// By default, the venue will be sent by the user.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the venue.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
///
/// https://core.telegram.org/bots/api#inlinequeryresultvenue
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultVenue extends InlineQueryResult {
  double latitude;
  double longitude;
  String title;
  String address;
  String? foursquareId;
  String? foursquareType;
  String? googlePlaceId;
  String? googlePlaceType;
  InputMessageContent? inputMessageContent;
  String? thumbUrl;
  int? thumbWidth;
  int? thumbHeight;
  InlineQueryResultVenue({
    required String id,
    required this.latitude,
    required this.longitude,
    required this.title,
    required this.address,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
    this.thumbUrl,
    this.thumbWidth,
    this.thumbHeight,
  }) : super(
    type: EInlineQueryResultType.VENUE,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultVenue.fromJson(JsonObjectEx json) => _$InlineQueryResultVenueFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultVenueToJson(this);
}
