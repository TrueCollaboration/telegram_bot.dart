part of truecollaboration.telegram_bot.models;

/// Represents the [scope] of bot commands, covering all administrators of a specific group or supergroup chat.
///
/// https://core.telegram.org/bots/api#botcommandscopechatadministrators
///
/// [scope]: https://core.telegram.org/bots/api#botcommandscope
@JsonSerializableEx(fieldRename: FieldRename.snake)
class BotCommandScopeChatAdministrators extends BotCommandScope {
  dynamic chatId;

  BotCommandScopeChatAdministrators({
    required this.chatId,
  }) : super(
    type: EBotCommandScopeType.CHAT_ADMINISTRATORS,
  );
  
  factory BotCommandScopeChatAdministrators.fromJson(JsonObjectEx json) => _$BotCommandScopeChatAdministratorsFromJson(json);
  JsonObjectEx toJson() => _$BotCommandScopeChatAdministratorsToJson(this);
}
