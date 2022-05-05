part of truecollaboration.telegram_bot.models;

/// Represents a location on a map.
/// By default, the location will be sent by the user.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the location.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
///
/// https://core.telegram.org/bots/api#inlinequeryresultlocation
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultLocation extends InlineQueryResult {
  double latitude;
  double longitude;
  String title;
  double? horizontalAccuracy;
  int? livePeriod;
  int? heading;
  int? proximityAlertRadius;
  InputMessageContent? inputMessageContent;
  String? thumbUrl;
  int? thumbWidth;
  int? thumbHeight;

  InlineQueryResultLocation({
    required String id,
    required this.latitude,
    required this.longitude,
    required this.title,
    this.horizontalAccuracy,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
    this.thumbUrl,
    this.thumbWidth,
    this.thumbHeight,
  }) : super(
    type: EInlineQueryResultType.LOCATION,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultLocation.fromJson(JsonObjectEx json) => _$InlineQueryResultLocationFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultLocationToJson(this);
}
