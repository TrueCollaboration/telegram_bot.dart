part of truecollaboration.telegram_bot.models;

/// This object represents a service message about new members invited to a voice chat.
///
/// https://core.telegram.org/bots/api#voicechatparticipantsinvited
@JsonSerializableEx(fieldRename: FieldRename.snake)
class VoiceChatParticipantsInvited extends ITelegramModel {
  List<User>? users;

  VoiceChatParticipantsInvited({this.users});
  
  factory VoiceChatParticipantsInvited.fromJson(JsonObjectEx json) => _$VoiceChatParticipantsInvitedFromJson(json);
  JsonObjectEx toJson() => _$VoiceChatParticipantsInvitedToJson(this);
}
