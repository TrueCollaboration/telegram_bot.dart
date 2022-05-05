part of truecollaboration.telegram_bot.models;

/// Contains data required for decrypting and authenticating [EncryptedPassportElement].
/// See the [Telegram Passport Documentation] for a complete description of the data decryption and authentication processes.
///
/// https://core.telegram.org/bots/api#encryptedcredentials
///
/// [EncryptedPassportElement]: https://core.telegram.org/bots/api#encryptedpassportelement
/// [Telegram Passport Documentation]: https://core.telegram.org/passport#receiving-information
@JsonSerializableEx(fieldRename: FieldRename.snake)
class EncryptedCredentials extends ITelegramModel {
  String data;
  String hash;
  String secret;
  EncryptedCredentials({
    required this.data,
    required this.hash,
    required this.secret,
  });
  
  factory EncryptedCredentials.fromJson(JsonObjectEx json) => _$EncryptedCredentialsFromJson(json);
  JsonObjectEx toJson() => _$EncryptedCredentialsToJson(this);
}