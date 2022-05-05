part of truecollaboration.telegram_bot.models;

/// This object represents one button of the reply keyboard.
/// For simple text buttons String can be used instead of this object to specify text of the button.
/// Optional fields are mutually exclusive.
///
/// **Note:** requestContact and requestLocation options will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
///
/// **Note:** requestPoll option will only work in Telegram versions released after 23 January, 2020. Older clients will display unsupported message.
///
/// https://core.telegram.org/bots/api#keyboardbutton
@JsonSerializableEx(fieldRename: FieldRename.snake)
class KeyboardButton extends ITelegramModel {
  String text;
  bool? requestContact;
  bool? requestLocation;
  KeyboardButtonPollType? requestPoll;
  KeyboardButton({
    required this.text,
    this.requestContact,
    this.requestLocation,
    this.requestPoll,
  });
  
  factory KeyboardButton.fromJson(JsonObjectEx json) => _$KeyboardButtonFromJson(json);
  JsonObjectEx toJson() => _$KeyboardButtonToJson(this);
}
