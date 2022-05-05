part of truecollaboration.telegram_bot.models;

/// Represents a [result] of an inline query that was chosen by the user and sent to their chat partner.
///
/// **Note:** It is necessary to enable [inline feedback] via [@Botfather] in order to receive these objects in updates.
///
/// https://core.telegram.org/bots/api#choseninlineresult
///
/// [result]: https://core.telegram.org/bots/api#inlinequeryresult
/// [inline feedback]: https://core.telegram.org/bots/inline#collecting-feedback
/// [@Botfather]: https://t.me/botfather
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChosenInlineResult extends ITelegramModel {
  String resultId;
  User from;
  Location? location;
  String? inlineMessageId;
  String query;
  ChosenInlineResult({
    required this.resultId,
    required this.from,
    this.location,
    this.inlineMessageId,
    required this.query,
  });
  
  factory ChosenInlineResult.fromJson(JsonObjectEx json) => _$ChosenInlineResultFromJson(json);
  JsonObjectEx toJson() => _$ChosenInlineResultToJson(this);
}
