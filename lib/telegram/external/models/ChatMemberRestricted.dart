part of truecollaboration.telegram_bot.models;

/// Represents a [chat member] that is under certain restrictions in the chat. Supergroups only.
///
/// that is under certain restrictions in the chat. Supergroups only.
///
/// [chat member]: https://core.telegram.org/bots/api#chatmember

@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatMemberRestricted extends ChatMember {
  bool isMember;
  bool canChangeInfo;
  bool canInviteUsers;
  bool canPinMessages;
  bool canSendMessages;
  bool canSendMediaMessages;
  bool canSendPolls;
  bool canSendOtherMessages;
  bool canAddWebPagePreviews;
  int untilDate;

  ChatMemberRestricted({
    required EChatMemberStatus status,
    required User user,
    this.isMember = false,
    this.canChangeInfo = false,
    this.canInviteUsers = false,
    this.canPinMessages = false,
    this.canSendMessages = false,
    this.canSendMediaMessages = false,
    this.canSendPolls = false,
    this.canSendOtherMessages = false,
    this.canAddWebPagePreviews = false,
    required this.untilDate,
  }) : super(
    status: status,
    user: user,
  );
  
  factory ChatMemberRestricted.fromJson(JsonObjectEx json) => _$ChatMemberRestrictedFromJson(json);
  JsonObjectEx toJson() => _$ChatMemberRestrictedToJson(this);
}
