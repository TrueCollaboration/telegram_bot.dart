part of truecollaboration.telegram_bot.models;

/// Represents an issue with the translated version of a document.
/// The error is considered resolved when a file with the document translation change.
///
/// https://core.telegram.org/bots/api#passportelementerrortranslationfiles
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportElementErrorTranslationFiles extends PassportElementError {
  List<String> fileHashes;
  PassportElementErrorTranslationFiles({
    required String source,
    required EPassportElementErrorType type,
    required String message,
    required this.fileHashes,
  }) : super(
    source: source,
    type: type,
    message: message,
  );
  
  factory PassportElementErrorTranslationFiles.fromJson(JsonObjectEx json) => _$PassportElementErrorTranslationFilesFromJson(json);
  JsonObjectEx toJson() => _$PassportElementErrorTranslationFilesToJson(this);
}
