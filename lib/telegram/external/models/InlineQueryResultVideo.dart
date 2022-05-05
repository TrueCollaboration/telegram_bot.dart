part of truecollaboration.telegram_bot.models;

/// Represents a link to a page containing an embedded video player or a video file.
/// By default, this video file will be sent by the user with an optional caption.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the video.
///
/// If an InlineQueryResultVideo message contains an embedded video (e.g., YouTube),
/// you **must** replace its content using *inputMessageContent*.
///
/// https://core.telegram.org/bots/api#inlinequeryresultvideo
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultVideo extends InlineQueryResult {
  String videoUrl;
  String mimeType;
  String thumbUrl;
  String title;
  String? caption;
  String? parseMode;
  int? videoWidth;
  int? videoHeight;
  int? videoDuration;
  String? description;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;

  InlineQueryResultVideo({
    required String id,
    required this.videoUrl,
    required this.mimeType,
    required this.thumbUrl,
    required this.title,
    this.caption,
    this.parseMode,
    this.videoWidth,
    this.videoHeight,
    this.videoDuration,
    this.description,
    this.captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.VIDEO,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultVideo.fromJson(JsonObjectEx json) => _$InlineQueryResultVideoFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultVideoToJson(this);
}
