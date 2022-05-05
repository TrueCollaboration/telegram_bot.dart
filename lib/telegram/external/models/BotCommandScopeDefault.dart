part of truecollaboration.telegram_bot.models;

/// Represents the default [scope] of bot commands.
/// Default commands are used if no commands with a [narrower scope] are specified for the user.
///
/// https://core.telegram.org/bots/api#botcommandscopedefault
///
/// [scope]: https://core.telegram.org/bots/api#botcommandscope
/// [narrower scope]: https://core.telegram.org/bots/api#determining-list-of-commands
@JsonSerializableEx(fieldRename: FieldRename.snake)
class BotCommandScopeDefault extends BotCommandScope {
  BotCommandScopeDefault() : super(
    type: EBotCommandScopeType.DEFAULT,
  );
  
  factory BotCommandScopeDefault.fromJson(JsonObjectEx json) => _$BotCommandScopeDefaultFromJson(json);
  JsonObjectEx toJson() => _$BotCommandScopeDefaultToJson(this);
}
