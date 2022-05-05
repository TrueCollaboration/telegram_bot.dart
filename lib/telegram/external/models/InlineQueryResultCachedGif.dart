part of truecollaboration.telegram_bot.models;

/// Represents a link to an animated GIF file stored on the Telegram servers.
/// By default, this animated GIF file will be sent by the user with an optional caption.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with specified content instead of the animation.
///
/// https://core.telegram.org/bots/api#inlinequeryresultcachedgif
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultCachedGif extends InlineQueryResult {
  String gifFileId;
  String? title;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;
  InlineQueryResultCachedGif({
    required String id,
    required this.gifFileId,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.GIF,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultCachedGif.fromJson(JsonObjectEx json) => _$InlineQueryResultCachedGifFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultCachedGifToJson(this);
}
