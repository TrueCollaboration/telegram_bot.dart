part of truecollaboration.telegram_bot.models;

/// Represents a photo to be sent.
///
/// https://core.telegram.org/bots/api#inputmediaphoto
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputMediaPhoto extends InputMedia {
  InputMediaPhoto({
    required String media,
    String? caption,
    String? parseMode,
    List<MessageEntity>? captionEntities,
  }) : super(
    type: EInputMediaType.PHOTO,
    media: media,
    caption: caption,
    parseMode: parseMode,
    captionEntities: captionEntities,
  );
  
  factory InputMediaPhoto.fromJson(JsonObjectEx json) => _$InputMediaPhotoFromJson(json);
  JsonObjectEx toJson() => _$InputMediaPhotoToJson(this);
}
