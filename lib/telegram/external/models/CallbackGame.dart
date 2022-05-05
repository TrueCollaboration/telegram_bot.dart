part of truecollaboration.telegram_bot.models;

/// A placeholder, currently holds no information.
/// Use [BotFather] to set up your game.
///
/// https://core.telegram.org/bots/api#callbackgame
///
/// [BotFather]: https://t.me/botfather
@JsonSerializableEx(fieldRename: FieldRename.snake)
class CallbackGame extends ITelegramModel {
  CallbackGame();

  JsonObjectEx toJson() => _$CallbackGameToJson(this);
}
