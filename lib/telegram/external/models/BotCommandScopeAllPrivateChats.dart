part of truecollaboration.telegram_bot.models;

/// Represents the [scope] of bot commands, covering all group and supergroup chats.
///
/// https://core.telegram.org/bots/api#botcommandscopeallprivatechats
///
/// [scope]: https://core.telegram.org/bots/api#botcommandscope
@JsonSerializableEx(fieldRename: FieldRename.snake)
class BotCommandScopeAllPrivateChats extends BotCommandScope {
  BotCommandScopeAllPrivateChats() : super(
    type: EBotCommandScopeType.ALL_PRIVATE_CHATS
  );
  
  factory BotCommandScopeAllPrivateChats.fromJson(JsonObjectEx json) => _$BotCommandScopeAllPrivateChatsFromJson(json);
  JsonObjectEx toJson() => _$BotCommandScopeAllPrivateChatsToJson(this);
}
