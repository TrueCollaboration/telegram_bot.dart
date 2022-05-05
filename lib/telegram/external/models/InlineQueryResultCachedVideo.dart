part of truecollaboration.telegram_bot.models;

/// Represents a link to a video file stored on the Telegram servers.
/// By default, this video file will be sent by the user with an optional caption.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the video.
///
/// https://core.telegram.org/bots/api#inlinequeryresultcachedvideo
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultCachedVideo extends InlineQueryResult {
  String videoFileId;
  String title;
  String? description;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InlineKeyboardMarkup? replyMarkup;
  InputMessageContent? inputMessageContent;
  InlineQueryResultCachedVideo({
    required String id,
    required this.videoFileId,
    required this.title,
    this.description,
    this.caption,
    this.parseMode,
    this.captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.VIDEO,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultCachedVideo.fromJson(JsonObjectEx json) => _$InlineQueryResultCachedVideoFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultCachedVideoToJson(this);
}
