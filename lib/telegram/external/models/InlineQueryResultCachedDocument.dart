part of truecollaboration.telegram_bot.models;

/// Represents a link to a file stored on the Telegram servers.
/// By default, this file will be sent by the user with an optional caption.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the file.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
///
/// https://core.telegram.org/bots/api#inlinequeryresultcacheddocument
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultCachedDocument extends InlineQueryResult {
  String title;
  String documentFileId;
  String? description;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;
  InlineQueryResultCachedDocument({
    required String id,
    required this.title,
    required this.documentFileId,
    this.description,
    this.caption,
    this.parseMode,
    this.captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.DOCUMENT,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultCachedDocument.fromJson(JsonObjectEx json) => _$InlineQueryResultCachedDocumentFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultCachedDocumentToJson(this);
}
