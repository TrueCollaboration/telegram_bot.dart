part of truecollaboration.telegram_bot.models;

/// This object represents a dice with random value from 1 to 6. (Yes, we're aware of the “proper” singular of die. But it's awkward, and we decided to help it change. One dice at a time!)
///
/// https://core.telegram.org/bots/api#dice
@JsonSerializableEx(fieldRename: FieldRename.snake)
class BotCommand {
  String command;
  String description;
  BotCommand({
    required this.command,
    required this.description,
  });
  
  factory BotCommand.fromJson(JsonObjectEx json) => _$BotCommandFromJson(json);
  JsonObjectEx toJson() => _$BotCommandToJson(this);
}