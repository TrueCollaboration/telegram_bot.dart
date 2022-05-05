part of truecollaboration.telegram_bot.models;

/// Contains information about Telegram Passport data shared with the bot by the user.
///
/// https://core.telegram.org/bots/api#passportdata
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportData extends ITelegramModel {
  List<EncryptedPassportElement> data;
  EncryptedCredentials credentials;
  PassportData({
    required this.data,
    required this.credentials,
  });
  
  factory PassportData.fromJson(JsonObjectEx json) => _$PassportDataFromJson(json);
  JsonObjectEx toJson() => _$PassportDataToJson(this);
}
