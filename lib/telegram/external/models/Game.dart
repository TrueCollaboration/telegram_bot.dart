part of truecollaboration.telegram_bot.models;

/// This object represents a game.
/// Use BotFather to create and edit games, their short names will act as unique identifiers.
///
/// https://core.telegram.org/bots/api#game
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Game extends ITelegramModel {
  String title;
  String description;
  List<PhotoSize> photo;
  String? text;
  List<MessageEntity>? textEntities;
  Animation? animation;
  Game({
    required this.title,
    required this.description,
    required this.photo,
    this.text,
    this.textEntities,
    this.animation,
  });
  
  factory Game.fromJson(JsonObjectEx json) => _$GameFromJson(json);
  JsonObjectEx toJson() => _$GameToJson(this);
}
