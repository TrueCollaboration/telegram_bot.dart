part of truecollaboration.telegram_bot.models;

/// Contains information about why a request was unsuccessful.
///
/// https://core.telegram.org/bots/api#responseparameters
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ResponseParameters extends ITelegramModel {
  int? migrateToChatId;
  int? retryAfter;

  ResponseParameters({
    this.migrateToChatId,
    this.retryAfter,
  });
  
  factory ResponseParameters.fromJson(JsonObjectEx json) => _$ResponseParametersFromJson(json);
  JsonObjectEx toJson() => _$ResponseParametersToJson(this);
}
