part of truecollaboration.telegram_bot.models;

/// This object represents a voice note.
///
/// https://core.telegram.org/bots/api#voice
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Voice extends ITelegramModel {
  String fileId;
  String fileUniqueId;
  int duration;
  String? mimeType;
  int? fileSize;

  Voice({
    required this.fileId,
    required this.fileUniqueId,
    required this.duration,
    this.mimeType,
    this.fileSize,
  });
  
  factory Voice.fromJson(JsonObjectEx json) => _$VoiceFromJson(json);
  JsonObjectEx toJson() => _$VoiceToJson(this);
}
