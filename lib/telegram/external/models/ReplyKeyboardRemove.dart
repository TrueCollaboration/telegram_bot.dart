part of truecollaboration.telegram_bot.models;

/// Upon receiving a message with this object,
/// Telegram clients will remove the current custom keyboard and display the default letter-keyboard.
/// By default, custom keyboards are displayed until a new keyboard is sent by a bot.
/// An exception is made for one-time keyboards that are hidden immediately after the user presses a
/// button (see [ReplyKeyboardMarkup]).
///
/// https://core.telegram.org/bots/api#replykeyboardremove
///
/// [ReplyKeyboardMarkup]: https://core.telegram.org/bots/api#replykeyboardmarkup
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ReplyKeyboardRemove extends ReplyMarkup {
  bool removeKeyboard;
  bool? selective;
  ReplyKeyboardRemove({
    required this.removeKeyboard,
    this.selective,
  });
  
  factory ReplyKeyboardRemove.fromJson(JsonObjectEx json) => _$ReplyKeyboardRemoveFromJson(json);
  JsonObjectEx toJson() => _$ReplyKeyboardRemoveToJson(this);
}
