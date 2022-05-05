part of truecollaboration.telegram_bot.models;

/// Represents a [chat member] that isn't currently a member of the chat, but may join it themselves.
///
/// that isn't currently a member of the chat, but may join it themselves.
///
/// [chat member]: https://core.telegram.org/bots/api#chatmember

@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatMemberBanned extends ChatMember {
  int untilDate;

  ChatMemberBanned({
    required EChatMemberStatus status,
    required User user,
    required this.untilDate
  }) : super(
    status: status,
    user: user,
  );
  
  factory ChatMemberBanned.fromJson(JsonObjectEx json) => _$ChatMemberBannedFromJson(json);
  JsonObjectEx toJson() => _$ChatMemberBannedToJson(this);
}
