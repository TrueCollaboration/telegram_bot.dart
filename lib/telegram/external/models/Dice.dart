part of truecollaboration.telegram_bot.models;

/// This object represents an animated emoji that displays a random value.
///
/// https://core.telegram.org/bots/api#dice
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Dice extends ITelegramModel {
  //TODO TYPE
  static const String DICE = '🎲';
  static const String DART = '🎯';
  static const String BOWLING = '🎳';
  static const String BASKETBALL = '🏀';
  static const String FOOTBALL = '⚽';
  static const String SLOT_MACHINE = '🎰';

  int value;
  String emoji;
  Dice({
    required this.value,
    required this.emoji,
  });
  
  factory Dice.fromJson(JsonObjectEx json) => _$DiceFromJson(json);
  JsonObjectEx toJson() => _$DiceToJson(this);
}