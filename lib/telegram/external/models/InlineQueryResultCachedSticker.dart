part of truecollaboration.telegram_bot.models;

/// Represents a link to a sticker stored on the Telegram servers.
/// By default, this sticker will be sent by the user.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the sticker.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
///
/// https://core.telegram.org/bots/api#inlinequeryresultcachedsticker
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultCachedSticker extends InlineQueryResult {
  String? stickerFileId;
  InputMessageContent? inputMessageContent;
  InlineQueryResultCachedSticker({
    required String id,
    required this.stickerFileId,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.STICKER,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultCachedSticker.fromJson(JsonObjectEx json) => _$InlineQueryResultCachedStickerFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultCachedStickerToJson(this);
}
