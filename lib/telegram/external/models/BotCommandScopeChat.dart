part of truecollaboration.telegram_bot.models;

/// Represents the [scope] of bot commands, covering a specific chat.
///
/// https://core.telegram.org/bots/api#botcommandscopechat
///
/// [scope]: https://core.telegram.org/bots/api#botcommandscope
@JsonSerializableEx(fieldRename: FieldRename.snake)
class BotCommandScopeChat extends BotCommandScope {
  dynamic chatId;

  BotCommandScopeChat({
    required this.chatId,
  }) : super(
    type: EBotCommandScopeType.CHAT,
  );
  
  factory BotCommandScopeChat.fromJson(JsonObjectEx json) => _$BotCommandScopeChatFromJson(json);
  JsonObjectEx toJson() => _$BotCommandScopeChatToJson(this);
}