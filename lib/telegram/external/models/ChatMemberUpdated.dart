part of truecollaboration.telegram_bot.models;

/// This object represents changes in the status of a chat member.
///
/// https://core.telegram.org/bots/api#chatmemberupdated
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatMemberUpdated extends ITelegramModel {
  Chat? chat;
  User? from;
  int? date;
  ChatMember? oldChatMember;
  ChatMember? newChatMember;
  ChatInviteLink? inviteLink;
  ChatMemberUpdated({
    this.chat,
    this.from,
    this.oldChatMember,
    this.newChatMember,
    this.inviteLink,
  });
  
  factory ChatMemberUpdated.fromJson(JsonObjectEx json) => _$ChatMemberUpdatedFromJson(json);
  JsonObjectEx toJson() => _$ChatMemberUpdatedToJson(this);
}
