part of truecollaboration.telegram_bot.models;

/// Represents an issue with the selfie with a document.
/// The error is considered resolved when the file with the selfie changes.
///
/// https://core.telegram.org/bots/api#passportelementerrorselfie
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportElementErrorSelfie extends PassportElementError {
  String fileHash;
  PassportElementErrorSelfie({
    required String source,
    required EPassportElementErrorType type,
    required String message,
    required this.fileHash,
  }) : super(
    source: source,
    type: type,
    message: message,
  );
  
  factory PassportElementErrorSelfie.fromJson(JsonObjectEx json) => _$PassportElementErrorSelfieFromJson(json);
  JsonObjectEx toJson() => _$PassportElementErrorSelfieToJson(this);
}
