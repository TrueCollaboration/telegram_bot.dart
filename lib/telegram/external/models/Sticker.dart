part of truecollaboration.telegram_bot.models;

/// This object represents a sticker.
///
/// https://core.telegram.org/bots/api#sticker
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Sticker extends ITelegramModel {
  String fileId;
  String fileUniqueId;
  int width;
  int height;
  bool isAnimated;
  PhotoSize? thumb;
  String? emoji;
  String? setName;
  MaskPosition? maskPosition;
  int? fileSize;
  Sticker({
    required this.fileId,
    required this.fileUniqueId,
    required this.width,
    required this.height,
    required this.isAnimated,
    this.thumb,
    this.emoji,
    this.setName,
    this.maskPosition,
    this.fileSize,
  });
  
  factory Sticker.fromJson(JsonObjectEx json) => _$StickerFromJson(json);
  JsonObjectEx toJson() => _$StickerToJson(this);
}
