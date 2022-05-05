part of truecollaboration.telegram_bot.models;

/// Represents a [chat member] that has some additional privileges.
///
/// https://core.telegram.org/bots/api#chatmemberadministrator
///
/// [chat member]: https://core.telegram.org/bots/api#chatmember
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatMemberAdministrator extends ChatMember {
  bool canBeEdited;
  bool isAnonymous;
  bool canManageChat;
  bool canDeleteMessages;
  bool canManageVoiceChats;
  bool canRestrictMembers;
  bool canPromoteMembers;
  bool canChangeInfo;
  bool canInviteUsers;
  bool? canPostMessages;
  bool? canEditMessages;
  bool? canPinMessages;
  String? customTitle;

  ChatMemberAdministrator({
    required EChatMemberStatus status,
    required User user,
    this.canBeEdited = false,
    this.isAnonymous = false,
    this.canManageChat = false,
    this.canDeleteMessages = false,
    this.canManageVoiceChats = false,
    this.canRestrictMembers = false,
    this.canPromoteMembers = false,
    this.canChangeInfo = false,
    this.canInviteUsers = false,
    this.canPostMessages,
    this.canEditMessages,
    this.canPinMessages,
    this.customTitle,
  }) : super(
    status: status,
    user: user,
  );
  
  factory ChatMemberAdministrator.fromJson(JsonObjectEx json) => _$ChatMemberAdministratorFromJson(json);
  JsonObjectEx toJson() => _$ChatMemberAdministratorToJson(this);
}
