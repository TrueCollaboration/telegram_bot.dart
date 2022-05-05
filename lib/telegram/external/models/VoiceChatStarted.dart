part of truecollaboration.telegram_bot.models;

/// This object represents a service message about a voice chat started in the chat.
/// Currently holds no information.
///
/// https://core.telegram.org/bots/api#voicechatstarted
@JsonSerializableEx(fieldRename: FieldRename.snake)
class VoiceChatStarted extends ITelegramModel {
  VoiceChatStarted();
  
  factory VoiceChatStarted.fromJson(JsonObjectEx json) => _$VoiceChatStartedFromJson(json);
  JsonObjectEx toJson() => _$VoiceChatStartedToJson(this);
}