part of truecollaboration.telegram_bot.models;

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without sound) stored on the Telegram servers.
/// By default, this animated MPEG-4 file will be sent by the user with an optional caption.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the animation.
///
/// https://core.telegram.org/bots/api#inlinequeryresultmpeg4gif
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultCachedMpeg4Gif extends InlineQueryResult {
  String mpeg4FileId;
  String? title;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;
  InlineQueryResultCachedMpeg4Gif({
    required String id,
    required this.mpeg4FileId,
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
  
  factory InlineQueryResultCachedMpeg4Gif.fromJson(JsonObjectEx json) => _$InlineQueryResultCachedMpeg4GifFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultCachedMpeg4GifToJson(this);
}
