part of truecollaboration.telegram_bot.models;

/// Represents an issue with one of the files that constitute the translation of a document.
/// The error is considered resolved when the file changes.
///
/// https://core.telegram.org/bots/api#passportelementerrortranslationfile
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportElementErrorTranslationFile extends PassportElementError {
  String fileHash;
  PassportElementErrorTranslationFile({
    required String source,
    required EPassportElementErrorType type,
    required String message,
    required this.fileHash,
  }) : super(
    source: source,
    type: type,
    message: message,
  );
  
  factory PassportElementErrorTranslationFile.fromJson(JsonObjectEx json) => _$PassportElementErrorTranslationFileFromJson(json);
  JsonObjectEx toJson() => _$PassportElementErrorTranslationFileToJson(this);
}
