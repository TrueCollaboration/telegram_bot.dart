part of truecollaboration.telegram_bot.models;

/// This object represents an audio file to be treated as music by the Telegram clients.
///
/// https://core.telegram.org/bots/api#audio
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Audio extends ITelegramModel {
  String fileId;
  String fileUniqueId;
  int duration;
  String? performer;
  String? title;
  String? fileName;
  String? mimeType;
  int? fileSize;
  PhotoSize? thumb;

  Audio({
    required this.fileId,
    required this.fileUniqueId,
    required this.duration,
    this.performer,
    this.title,
    this.fileName,
    this.mimeType,
    this.fileSize,
    this.thumb,
  });
  
  factory Audio.fromJson(JsonObjectEx json) => _$AudioFromJson(json);
  JsonObjectEx toJson() => _$AudioToJson(this);
}
