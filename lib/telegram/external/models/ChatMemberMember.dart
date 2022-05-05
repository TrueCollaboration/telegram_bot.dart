part of truecollaboration.telegram_bot.models;

/// Represents a [chat member] that has no additional privileges or restrictions.
///
/// https://core.telegram.org/bots/api#chatmembermember
///
/// [chat member]: https://core.telegram.org/bots/api#chatmember

@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatMemberMember extends ChatMember {
  ChatMemberMember({
    required EChatMemberStatus status,
    required User user,
  }) : super(
    status: status,
    user: user,
  );
  
  factory ChatMemberMember.fromJson(JsonObjectEx json) => _$ChatMemberMemberFromJson(json);
  JsonObjectEx toJson() => _$ChatMemberMemberToJson(this);
}
