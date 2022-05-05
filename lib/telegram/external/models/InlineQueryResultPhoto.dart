part of truecollaboration.telegram_bot.models;

/// Represents a link to a photo.
/// By default, this photo will be sent by the user with optional caption.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the photo.
///
/// https://core.telegram.org/bots/api#inlinequeryresultphoto
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultPhoto extends InlineQueryResult {
  String photoUrl;
  String thumbUrl;
  int? photoWidth;
  int? photoHeight;
  String? title;
  String? description;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;
  InlineQueryResultPhoto({
    required String id,
    required this.photoUrl,
    required this.thumbUrl,
    this.photoWidth,
    this.photoHeight,
    this.title,
    this.description,
    this.caption,
    this.parseMode,
    this.captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.PHOTO,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultPhoto.fromJson(JsonObjectEx json) => _$InlineQueryResultPhotoFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultPhotoToJson(this);
}
