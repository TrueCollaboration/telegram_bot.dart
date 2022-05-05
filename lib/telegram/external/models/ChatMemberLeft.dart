part of truecollaboration.telegram_bot.models;

/// Represents a [chat member] that isn't currently a member of the chat, but may join it themselves.
///
/// that isn't currently a member of the chat, but may join it themselves.
///
/// [chat member]: https://core.telegram.org/bots/api#chatmember

@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatMemberLeft extends ChatMember {
  ChatMemberLeft({
    required EChatMemberStatus status,
    required User user,
  }) : super(
    status: status,
    user: user,
  );
  
  factory ChatMemberLeft.fromJson(JsonObjectEx json) => _$ChatMemberLeftFromJson(json);
  JsonObjectEx toJson() => _$ChatMemberLeftToJson(this);
}
