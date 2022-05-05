part of truecollaboration.telegram_bot.models;

/// This object represents one size of a photo or a [file] / [sticker] thumbnail.
///
/// https://core.telegram.org/bots/api#photosize
///
/// [file]: https://core.telegram.org/bots/api#document
/// [sticker]: https://core.telegram.org/bots/api#sticker
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PhotoSize extends ITelegramModel {
  String fileId;
  String fileUniqueId;
  int width;
  int height;
  int? fileSize;
  PhotoSize({
    required this.fileId,
    required this.fileUniqueId,
    required this.width,
    required this.height,
    this.fileSize,
  });
  
  factory PhotoSize.fromJson(JsonObjectEx json) => _$PhotoSizeFromJson(json);
  JsonObjectEx toJson() => _$PhotoSizeToJson(this);
}
