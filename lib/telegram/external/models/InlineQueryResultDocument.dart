part of truecollaboration.telegram_bot.models;

/// Represents a link to a file. By default, this file will be sent by the user with an optional caption.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the file.
/// Currently, only **.PDF** and **.ZIP** files can be sent using this method.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
///
/// https://core.telegram.org/bots/api#inlinequeryresultdocument
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultDocument extends InlineQueryResult {
  String title;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  String documentUrl;
  String mimeType;
  String? description;
  InputMessageContent? inputMessageContent;
  String? thumbUrl;
  int? thumbWidth;
  int? thumbHeight;
  InlineQueryResultDocument({
    required String id,
    required this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    required this.documentUrl,
    required this.mimeType,
    this.description,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
    this.thumbUrl,
    this.thumbWidth,
    this.thumbHeight,
  }) : super(
    type: EInlineQueryResultType.DOCUMENT,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultDocument.fromJson(JsonObjectEx json) => _$InlineQueryResultDocumentFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultDocumentToJson(this);
}
