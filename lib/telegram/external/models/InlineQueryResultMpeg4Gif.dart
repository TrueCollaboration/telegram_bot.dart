part of truecollaboration.telegram_bot.models;

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without sound).
/// By default, this animated MPEG-4 file will be sent by the user with optional caption.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the animation.
///
/// https://core.telegram.org/bots/api#inlinequeryresultmpeg4gif
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultMpeg4Gif extends InlineQueryResult {
  String mpeg4Url;
  int? mpeg4Width;
  int? mpeg4Height;
  int? mpeg4Duration;
  String thumbUrl;
  String? thumbMimeType;
  String? title;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;

  InlineQueryResultMpeg4Gif({
    required String id,
    required this.mpeg4Url,
    this.mpeg4Width,
    this.mpeg4Height,
    this.mpeg4Duration,
    required this.thumbUrl,
    this.thumbMimeType,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.MPEG4GIF,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultMpeg4Gif.fromJson(JsonObjectEx json) => _$InlineQueryResultMpeg4GifFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultMpeg4GifToJson(this);
}
