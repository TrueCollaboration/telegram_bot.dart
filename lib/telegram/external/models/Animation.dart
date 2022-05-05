part of truecollaboration.telegram_bot.models;

/// This object represents an animation file (GIF or H.264/MPEG-4 AVC video without sound).
///
/// https://core.telegram.org/bots/api#animation
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Animation extends ITelegramModel {
  String fileId;
  String fileUniqueId;
  int width;
  int height;
  int duration;
  PhotoSize? thumb;
  String? fileName;
  String? mimeType;
  int? fileSize;

  Animation({
    required this.fileId,
    required this.fileUniqueId,
    required this.width,
    required this.height,
    required this.duration,
    this.thumb,
    this.fileName,
    this.mimeType,
    this.fileSize,
  });
  
  factory Animation.fromJson(JsonObjectEx json) => _$AnimationFromJson(json);
  JsonObjectEx toJson() => _$AnimationToJson(this);
}
