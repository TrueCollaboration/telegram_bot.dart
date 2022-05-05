part of truecollaboration.telegram_bot.models;

/// This object represents a general file (as opposed to [photos], [voice messages] and [audio files]).
///
/// https://core.telegram.org/bots/api#document
///
/// [photos]: https://core.telegram.org/bots/api#photosize
/// [voice messages]: https://core.telegram.org/bots/api#voice
/// [audio files]: https://core.telegram.org/bots/api#audio
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Document extends ITelegramModel {
  String fileId;
  String fileUniqueId;
  PhotoSize? thumb;
  String? fileName;
  String? mimeType;
  int? fileSize;
  Document({
    required this.fileId,
    required this.fileUniqueId,
    this.thumb,
    this.fileName,
    this.mimeType,
    this.fileSize,
  });
  
  factory Document.fromJson(JsonObjectEx json) => _$DocumentFromJson(json);
  JsonObjectEx toJson() => _$DocumentToJson(this);
}