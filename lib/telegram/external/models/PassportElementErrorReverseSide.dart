part of truecollaboration.telegram_bot.models;

/// Represents an issue with the reverse side of a document.
/// The error is considered resolved when the file with reverse side of the document changes.
///
/// https://core.telegram.org/bots/api#passportelementerrorreverseside
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportElementErrorReverseSide extends PassportElementError {
  String fileHash;
  PassportElementErrorReverseSide({
    required String source,
    required EPassportElementErrorType type,
    required String message,
    required this.fileHash,
  }) : super(
    source: source,
    type: type,
    message: message,
  );
  
  factory PassportElementErrorReverseSide.fromJson(JsonObjectEx json) => _$PassportElementErrorReverseSideFromJson(json);
  JsonObjectEx toJson() => _$PassportElementErrorReverseSideToJson(this);
}
