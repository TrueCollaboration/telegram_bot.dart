part of truecollaboration.telegram_bot.models;

/// This object represents a file uploaded to Telegram Passport.
/// Currently all Telegram Passport files are in JPEG format when decrypted and don't exceed 10MB.
///
/// https://core.telegram.org/bots/api#passportfile
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportFile extends ITelegramModel {
  String fileId;
  String fileUniqueId;
  int fileSize;
  int fileDate;

  PassportFile({
    required this.fileId,
    required this.fileUniqueId,
    required this.fileSize,
    required this.fileDate,
  });
  
  factory PassportFile.fromJson(JsonObjectEx json) => _$PassportFileFromJson(json);
  JsonObjectEx toJson() => _$PassportFileToJson(this);
}
