part of truecollaboration.telegram_bot.models;

/// This object represents an incoming callback query from a callback button in an [inline keyboard].
/// If the button that originated the query was attached to a message sent by the bot,
/// the field *message* will be present.
/// If the button was attached to a message sent via the bot (in [inline mode]),
/// the field *inlineMessageId* will be present.
/// Exactly one of the fields *data* or *gameShortName* will be present.
///
/// **NOTE:** After the user presses a callback button,
/// Telegram clients will display a progress bar until you call [answerCallbackQuery].
/// It is, therefore, necessary to react by calling [answerCallbackQuery] even if no notification
/// to the user is needed (e.g., without specifying any of the optional parameters).
///
/// https://core.telegram.org/bots/api#callbackquery
///
/// [inline keyboard]: https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating
/// [inline mode]: https://core.telegram.org/bots/api#inline-mode
/// [answerCallbackQuery]: https://core.telegram.org/bots/api#answercallbackquery
@JsonSerializableEx(fieldRename: FieldRename.snake)
class CallbackQuery extends ITelegramModel {
  String id;
  User from;
  Message? message;
  String? inlineMessageId;
  String? chatInstance;
  String? data;
  String? gameShortName;
  CallbackQuery({
    required this.id,
    required this.from,
    this.message,
    this.inlineMessageId,
    this.chatInstance,
    this.data,
    this.gameShortName,
  });
  
  factory CallbackQuery.fromJson(JsonObjectEx json) => _$CallbackQueryFromJson(json);
  JsonObjectEx toJson() => _$CallbackQueryToJson(this);
}
