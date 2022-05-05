part of truecollaboration.telegram_bot.models;

/// Represents an issue with the front side of a document.
/// The error is considered resolved when the file with the front side of the document changes.
///
/// https://core.telegram.org/bots/api#passportelementerrorfrontside
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportElementErrorFrontSide extends PassportElementError {
  String fileHash;
  PassportElementErrorFrontSide({
    required String source,
    required EPassportElementErrorType type,
    required String message,
    required this.fileHash,
  }) : super(
    source: source,
    type: type,
    message: message,
  );
  
  factory PassportElementErrorFrontSide.fromJson(JsonObjectEx json) => _$PassportElementErrorFrontSideFromJson(json);
  JsonObjectEx toJson() => _$PassportElementErrorFrontSideToJson(this);
}
