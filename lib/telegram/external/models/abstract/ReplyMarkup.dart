part of truecollaboration.telegram_bot.models;

/// Object for an [inline keyboard], [custom reply keyboard], instructions to remove reply keyboard or to force a reply from the user.
/// * [ReplyKeyboardMarkup](https://core.telegram.org/bots/api#replykeyboardmarkup)
/// * [ReplyKeyboardRemove](https://core.telegram.org/bots/api#replykeyboardremove)
/// * [InlineKeyboardMarkup](https://core.telegram.org/bots/api#inlinekeyboardmarkup)
/// * [ForceReply](https://core.telegram.org/bots/api#forcereply)
///
/// [inline keyboard]: https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating
/// [custom reply keyboard]: https://core.telegram.org/bots#keyboards
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ReplyMarkup extends ITelegramModel {
  ReplyMarkup();
  
  factory ReplyMarkup.fromJson(JsonObjectEx json) => _$ReplyMarkupFromJson(json);
  
  @override
  JsonObjectEx toJson() => _$ReplyMarkupToJson(this);
}
