part of truecollaboration.telegram_bot.models;

/// Represents the [scope] of bot commands, covering all group and supergroup chat administrators.
///
/// https://core.telegram.org/bots/api#botcommandscopeallchatadministrators
///
/// [scope]: https://core.telegram.org/bots/api#botcommandscope
@JsonSerializableEx(fieldRename: FieldRename.snake)
class BotCommandScopeAllChatsAdministratorsModel extends BotCommandScope {
  BotCommandScopeAllChatsAdministratorsModel() : super(
    type: EBotCommandScopeType.ALL_CHAT_ADMINISTRATORS,
  );
  
  factory BotCommandScopeAllChatsAdministratorsModel.fromJson(JsonObjectEx json) => _$BotCommandScopeAllChatsAdministratorsModelFromJson(json);
  JsonObjectEx toJson() => _$BotCommandScopeAllChatsAdministratorsModelToJson(this);
}