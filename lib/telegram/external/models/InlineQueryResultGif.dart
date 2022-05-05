part of truecollaboration.telegram_bot.models;

/// Represents a link to an animated GIF file.
/// By default, this animated GIF file will be sent by the user with optional caption.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the animation.
///
/// https://core.telegram.org/bots/api#inlinequeryresultgif
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultGif extends InlineQueryResult {
  String gifUrl;
  int? gifWidth;
  int? gifHeight;
  int? gifDuration;
  String thumbUrl;
  String? thumbMimeType;
  String? title;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;

  InlineQueryResultGif({
    required String id,
    required this.gifUrl,
    this.gifWidth,
    this.gifHeight,
    this.gifDuration,
    required this.thumbUrl,
    this.thumbMimeType,
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
  
  factory InlineQueryResultGif.fromJson(JsonObjectEx json) => _$InlineQueryResultGifFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultGifToJson(this);
}
