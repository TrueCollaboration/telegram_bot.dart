part of truecollaboration.telegram_bot.models;

/// This object represents type of a poll, which is allowed to be created and sent when the corresponding button is pressed.
///
/// https://core.telegram.org/bots/api#keyboardbuttonpolltype
@JsonSerializableEx(fieldRename: FieldRename.snake)
class KeyboardButtonPollType extends ITelegramModel {
  String? type;
  KeyboardButtonPollType({
    this.type,
  });
  
  factory KeyboardButtonPollType.fromJson(JsonObjectEx json) => _$KeyboardButtonPollTypeFromJson(json);
  JsonObjectEx toJson() => _$KeyboardButtonPollTypeToJson(this);
}
