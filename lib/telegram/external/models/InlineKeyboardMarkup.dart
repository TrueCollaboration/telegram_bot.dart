part of truecollaboration.telegram_bot.models;

/// This object represents an [inline keyboard] that appears right next to the message it belongs to.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016. Older clients
/// will display *unsupported message*.
///
/// https://core.telegram.org/bots/api#inlinekeyboardmarkup
///
/// [inline keyboard]: https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineKeyboardMarkup extends ReplyMarkup {
  List<List<InlineKeyboardButton>> inlineKeyboard;
  InlineKeyboardMarkup({
    required this.inlineKeyboard,
  });
  
  factory InlineKeyboardMarkup.fromJson(JsonObjectEx json) => _$InlineKeyboardMarkupFromJson(json);
  JsonObjectEx toJson() => _$InlineKeyboardMarkupToJson(this);
}
