part of truecollaboration.telegram_bot.models;

/// This object represents a sticker set.
///
/// https://core.telegram.org/bots/api#stickerset
@JsonSerializableEx(fieldRename: FieldRename.snake)
class StickerSet extends ITelegramModel {
  String name;
  String title;
  bool isAnimated;
  bool containsMasks;
  List<Sticker> stickers;
  PhotoSize? thumb;
  StickerSet({
    required this.name,
    required this.title,
    required this.isAnimated,
    required this.containsMasks,
    required this.stickers,
    this.thumb,
  });
  
  factory StickerSet.fromJson(JsonObjectEx json) => _$StickerSetFromJson(json);
  JsonObjectEx toJson() => _$StickerSetToJson(this);
}
