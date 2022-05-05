part of truecollaboration.telegram_bot.models;

/// Represents the [scope] of bot commands, covering a specific member of a group or supergroup chat.
///
/// https://core.telegram.org/bots/api#botcommandscopechatmember
///
/// [scope]: https://core.telegram.org/bots/api#botcommandscope
@JsonSerializableEx(fieldRename: FieldRename.snake)
class BotCommandScopeChatMember extends BotCommandScope {
  dynamic chatId;

  BotCommandScopeChatMember({
    required this.chatId,
  }) : super(
    type: EBotCommandScopeType.CHAT_MEMBER,
  );
  
  factory BotCommandScopeChatMember.fromJson(JsonObjectEx json) => _$BotCommandScopeChatMemberFromJson(json);
  JsonObjectEx toJson() => _$BotCommandScopeChatMemberToJson(this);
}