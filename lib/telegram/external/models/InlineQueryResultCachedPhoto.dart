part of truecollaboration.telegram_bot.models;

/// Represents a link to a photo stored on the Telegram servers.
/// By default, this photo will be sent by the user with an optional caption.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the photo.
///
/// https://core.telegram.org/bots/api#inlinequeryresultcachedphoto
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultCachedPhoto extends InlineQueryResult {
  String photoFileId;
  String? title;
  String? description;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;
  InlineQueryResultCachedPhoto({
    required String id,
    required this.photoFileId,
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
  
  factory InlineQueryResultCachedPhoto.fromJson(JsonObjectEx json) => _$InlineQueryResultCachedPhotoFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultCachedPhotoToJson(this);
}
