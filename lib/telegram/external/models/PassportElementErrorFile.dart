part of truecollaboration.telegram_bot.models;

/// Represents an issue with a document scan.
/// The error is considered resolved when the file with the document scan changes.
///
/// https://core.telegram.org/bots/api#passportelementerrorfile
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportElementErrorFile extends PassportElementError {
  String fileHash;
  PassportElementErrorFile({
    required String source,
    required EPassportElementErrorType type,
    required String message,
    required this.fileHash,
  }) : super(
    source: source,
    type: type,
    message: message,
  );
  
  factory PassportElementErrorFile.fromJson(JsonObjectEx json) => _$PassportElementErrorFileFromJson(json);
  JsonObjectEx toJson() => _$PassportElementErrorFileToJson(this);
}
