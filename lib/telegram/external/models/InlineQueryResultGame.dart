part of truecollaboration.telegram_bot.models;

/// Represents a [Game].
///
/// **Note:** This will only work in Telegram versions released after October 1, 2016.
/// Older clients will not display any inline results if a game result is among them.
///
/// https://core.telegram.org/bots/api#inlinequeryresultgame
///
/// [Game]: https://core.telegram.org/bots/api#games
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultGame extends InlineQueryResult {
  String gameShortName;
  InlineQueryResultGame({
    required String id,
    required this.gameShortName,
    InlineKeyboardMarkup? replyMarkup,
  }) : super(
    type: EInlineQueryResultType.GAME,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultGame.fromJson(JsonObjectEx json) => _$InlineQueryResultGameFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultGameToJson(this);
}
