part of truecollaboration.telegram_bot.models;

/// This object contains information about one member of a chat.
/// Currently, the following 6 types of chat members are supported:
/// * [ChatMemberOwner](https://core.telegram.org/bots/api#chatmemberowner)
/// * [ChatMemberAdministrator](https://core.telegram.org/bots/api#chatmemberadministrator)
/// * [ChatMemberMember](https://core.telegram.org/bots/api#chatmembermember)
/// * [ChatMemberRestricted](https://core.telegram.org/bots/api#chatmemberrestricted)
/// * [ChatMemberLeft](https://core.telegram.org/bots/api#chatmemberleft)
/// * [ChatMemberBanned](https://core.telegram.org/bots/api#chatmemberbanned)
///
/// https://core.telegram.org/bots/api#chatmember
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatMember extends ITelegramModel {
  EChatMemberStatus status;
  User user;

  ChatMember({
    required this.status,
    required this.user,
  });
  
  factory ChatMember.fromJson(JsonObjectEx json) => _$ChatMemberFromJson(json);
  
  @override
  JsonObjectEx toJson() => _$ChatMemberToJson(this);
}