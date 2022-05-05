part of truecollaboration.telegram_bot.models;

/// Represents the [scope] of bot commands, covering all group and supergroup chats.
///
/// https://core.telegram.org/bots/api#botcommandscopeallgroupchats
///
/// [scope]: https://core.telegram.org/bots/api#botcommandscope
@JsonSerializableEx(fieldRename: FieldRename.snake)
class BotCommandScopeAllGroupChatsModel extends BotCommandScope {
  BotCommandScopeAllGroupChatsModel() : super(
    type: EBotCommandScopeType.ALL_GROUP_CHATS
  );
  
  factory BotCommandScopeAllGroupChatsModel.fromJson(JsonObjectEx json) => _$BotCommandScopeAllGroupChatsModelFromJson(json);
  JsonObjectEx toJson() => _$BotCommandScopeAllGroupChatsModelToJson(this);
}