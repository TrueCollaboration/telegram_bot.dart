part of truecollaboration.telegram_bot.models;

/// This object represents one button of an inline keyboard.
/// You **must** use exactly one of the optional fields.
///
/// https://core.telegram.org/bots/api#inlinekeyboardbutton
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineKeyboardButton extends ITelegramModel {
  String text;
  String? url;
  LoginUrl? loginUrl;
  String? callbackData;
  String? switchInlineQuery;
  String? switchInlineQueryCurrentChat;
  CallbackGame? callbackGame;
  bool? pay;
  InlineKeyboardButton({
    required this.text,
    this.url,
    this.loginUrl,
    this.callbackData,
    this.switchInlineQuery,
    this.switchInlineQueryCurrentChat,
    this.callbackGame,
    this.pay,
  });
  
  factory InlineKeyboardButton.fromJson(JsonObjectEx json) => _$InlineKeyboardButtonFromJson(json);
  JsonObjectEx toJson() => _$InlineKeyboardButtonToJson(this);
}
