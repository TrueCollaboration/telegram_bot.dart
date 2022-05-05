part of truecollaboration.telegram_bot.models;

/// This object represents a service message about a voice chat ended in the chat.
///
/// https://core.telegram.org/bots/api#voicechatended
@JsonSerializableEx(fieldRename: FieldRename.snake)
class VoiceChatEnded extends ITelegramModel {
  int duration;

  VoiceChatEnded({required this.duration});
  
  factory VoiceChatEnded.fromJson(JsonObjectEx json) => _$VoiceChatEndedFromJson(json);
  JsonObjectEx toJson() => _$VoiceChatEndedToJson(this);
}
