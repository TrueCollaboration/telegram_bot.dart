part of truecollaboration.telegram_bot.models;

/// Represents an issue with a list of scans.
/// The error is considered resolved when the list of files containing the scans changes.
///
/// https://core.telegram.org/bots/api#passportelementerrorfiles
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportElementErrorFiles extends PassportElementError {
  List<String> fileHashes;
  PassportElementErrorFiles({
    required String source,
    required EPassportElementErrorType type,
    required String message,
    required this.fileHashes,
  }) : super(
    source: source,
    type: type,
    message: message,
  );
  
  factory PassportElementErrorFiles.fromJson(JsonObjectEx json) => _$PassportElementErrorFilesFromJson(json);
  JsonObjectEx toJson() => _$PassportElementErrorFilesToJson(this);
}
