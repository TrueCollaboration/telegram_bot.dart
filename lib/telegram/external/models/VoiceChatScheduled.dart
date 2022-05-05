part of truecollaboration.telegram_bot.models;

/// This object represents a service message about a voice chat scheduled in the chat.
///
/// https://core.telegram.org/bots/api#voicechatscheduled
@JsonSerializableEx(fieldRename: FieldRename.snake)
class VoiceChatScheduled extends ITelegramModel {
  int startDate;

  VoiceChatScheduled({
    required this.startDate,
  });
  
  factory VoiceChatScheduled.fromJson(JsonObjectEx json) => _$VoiceChatScheduledFromJson(json);
  JsonObjectEx toJson() => _$VoiceChatScheduledToJson(this);
}
