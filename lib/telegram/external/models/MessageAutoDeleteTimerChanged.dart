part of truecollaboration.telegram_bot.models;

/// This object represents a service message about a change in auto-delete timer settings.
///
/// https://core.telegram.org/bots/api#messageautodeletetimerchanged
@JsonSerializableEx(fieldRename: FieldRename.snake)
class MessageAutoDeleteTimerChanged extends ITelegramModel {
  int messageAutoDeleteTime;

  MessageAutoDeleteTimerChanged({required this.messageAutoDeleteTime});
  
  factory MessageAutoDeleteTimerChanged.fromJson(JsonObjectEx json) => _$MessageAutoDeleteTimerChangedFromJson(json);
  JsonObjectEx toJson() => _$MessageAutoDeleteTimerChangedToJson(this);
}
