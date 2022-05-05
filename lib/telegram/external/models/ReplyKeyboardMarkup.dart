part of truecollaboration.telegram_bot.models;

/// This object represents a [custom keyboard] with reply options
/// (see [Introduction to bots] for details and examples).
///
/// https://core.telegram.org/bots/api#replykeyboardmarkup
///
/// [custom keyboard]: https://core.telegram.org/bots#keyboards
/// [Introduction to bots]: https://core.telegram.org/bots#keyboards
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ReplyKeyboardMarkup extends ReplyMarkup {
  List<List<KeyboardButton>> keyboard;
  bool? resizeKeyboard;
  bool? oneTimeKeyboard;
  String? inputFieldPlaceholder;
  bool? selective;
  ReplyKeyboardMarkup({
    required this.keyboard,
    this.resizeKeyboard,
    this.oneTimeKeyboard,
    this.inputFieldPlaceholder,
    this.selective,
  });
  
  factory ReplyKeyboardMarkup.fromJson(JsonObjectEx json) => _$ReplyKeyboardMarkupFromJson(json);
  JsonObjectEx toJson() => _$ReplyKeyboardMarkupToJson(this);
}
