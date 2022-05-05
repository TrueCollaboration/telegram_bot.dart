part of truecollaboration.telegram_bot.models;

/// This object represents a video file.
///
/// https://core.telegram.org/bots/api#video
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Video extends ITelegramModel {
  String fileId;
  String fileUniqueId;
  int width;
  int height;
  int duration;
  PhotoSize? thumb;
  String? fileName;
  String? mimeType;
  int? fileSize;

  Video({
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
  
  factory Video.fromJson(JsonObjectEx json) => _$VideoFromJson(json);
  JsonObjectEx toJson() => _$VideoToJson(this);
}
