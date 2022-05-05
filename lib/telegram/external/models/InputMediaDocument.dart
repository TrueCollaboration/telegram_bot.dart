part of truecollaboration.telegram_bot.models;

/// Represents a general file to be sent.
///
/// https://core.telegram.org/bots/api#inputmediadocument
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputMediaDocument extends InputMedia {
  dynamic thumb; // InputFile or String
  bool? disableContentTypeDetection;
  InputMediaDocument({
    required String media,
    this.thumb,
    String? caption,
    String? parseMode,
    List<MessageEntity>? captionEntities,
    this.disableContentTypeDetection,
  }) : super(
    type: EInputMediaType.DOCUMENT,
    media: media,
    caption: caption,
    parseMode: parseMode,
    captionEntities: captionEntities,
  );
  
  factory InputMediaDocument.fromJson(JsonObjectEx json) => _$InputMediaDocumentFromJson(json);
  JsonObjectEx toJson() => _$InputMediaDocumentToJson(this);
}