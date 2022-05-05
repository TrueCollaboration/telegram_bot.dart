part of truecollaboration.telegram_bot.models;

/// This object represents one row of the high scores table for a game.
///
/// https://core.telegram.org/bots/api#gamehighscore
@JsonSerializableEx(fieldRename: FieldRename.snake)
class GameHighScore extends ITelegramModel {
  int position;
  User user;
  int score;
  GameHighScore({
    required this.position,
    required this.user,
    required this.score,
  });
  
  factory GameHighScore.fromJson(JsonObjectEx json) => _$GameHighScoreFromJson(json);
  JsonObjectEx toJson() => _$GameHighScoreToJson(this);
}
