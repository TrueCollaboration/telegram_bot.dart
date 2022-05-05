part of truecollaboration.telegram_bot.models;

/// This object represents a [video message] (available in Telegram apps as of [v.4.0]).
///
/// https://core.telegram.org/bots/api#videonote
///
/// [video message]: https://telegram.org/blog/video-messages-and-telescope
/// [v.4.0]: https://telegram.org/blog/video-messages-and-telescope
@JsonSerializableEx(fieldRename: FieldRename.snake)
class VideoNote extends ITelegramModel {
  String fileId;
  String fileUniqueId;
  int length;
  int duration;
  PhotoSize? thumb;
  int? fileSize;

  VideoNote({
    required this.fileId,
    required this.fileUniqueId,
    required this.length,
    required this.duration,
    this.thumb,
    this.fileSize,
  });
  
  factory VideoNote.fromJson(JsonObjectEx json) => _$VideoNoteFromJson(json);
  JsonObjectEx toJson() => _$VideoNoteToJson(this);
}
