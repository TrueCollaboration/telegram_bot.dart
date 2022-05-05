part of truecollaboration.telegram_bot.models;

/// Represents an invite link for a chat.
///
/// https://core.telegram.org/bots/api#chatinvitelink
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatInviteLink extends ITelegramModel {
  String inviteLink;
  User creator;
  bool createsJoinRequest;
  bool isPrimary;
  bool isRevoked;
  String? name;
  int? expireDate;
  int? memberLimit;
  int? pendingJoinRequestCount;

  ChatInviteLink({
    required this.inviteLink,
    required this.creator,
    required this.createsJoinRequest,
    required this.isPrimary,
    required this.isRevoked,
    required this.name,
    this.expireDate,
    this.memberLimit,
    this.pendingJoinRequestCount,
  });
  
  factory ChatInviteLink.fromJson(JsonObjectEx json) => _$ChatInviteLinkFromJson(json);
  JsonObjectEx toJson() => _$ChatInviteLinkToJson(this);
}