part of truecollaboration.telegram_bot.models;

/// This object represents the scope to which bot commands are applied.
/// Currently, the following 7 scopes are supported:
/// * [BotCommandScopeDefault](https://core.telegram.org/bots/api#botcommandscopedefault)
/// * [BotCommandScopeAllPrivateChats](https://core.telegram.org/bots/api#botcommandscopeallprivatechats)
/// * [BotCommandScopeAllGroupChats](https://core.telegram.org/bots/api#botcommandscopeallgroupchats)
/// * [BotCommandScopeAllChatAdministrators](https://core.telegram.org/bots/api#botcommandscopeallchatadministrators)
/// * [BotCommandScopeChat](https://core.telegram.org/bots/api#botcommandscopechat)
/// * [BotCommandScopeChatAdministrators](https://core.telegram.org/bots/api#botcommandscopechatadministrators)
/// * [BotCommandScopeChatMember](https://core.telegram.org/bots/api#botcommandscopechatmember)
///
/// https://core.telegram.org/bots/api#botcommandscope
@JsonSerializableEx(fieldRename: FieldRename.snake)
class BotCommandScope extends ITelegramModel {
  final EBotCommandScopeType type;

  BotCommandScope({
    required this.type,
  });
  
  factory BotCommandScope.fromJson(JsonObjectEx json) => _$BotCommandScopeFromJson(json);
  
  @override
  JsonObjectEx toJson() => _$BotCommandScopeToJson(this);
}