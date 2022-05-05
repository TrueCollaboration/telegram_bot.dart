part of truecollaboration.telegram_bot.models;

/// Represents a [chat member] that owns the chat and has all administrator privileges.
///
/// https://core.telegram.org/bots/api#chatmemberowner
///
/// [chat member]: https://core.telegram.org/bots/api#chatmember
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatMemberOwner extends ChatMember {
  bool isAnonymous;
  String? customTitle;
  ChatMemberOwner({
    required EChatMemberStatus status,
    required User user,
    required this.isAnonymous,
    this.customTitle,
  }) : super(
    status: status,
    user: user,
  );
  
  factory ChatMemberOwner.fromJson(JsonObjectEx json) => _$ChatMemberOwnerFromJson(json);
  JsonObjectEx toJson() => _$ChatMemberOwnerToJson(this);
}
