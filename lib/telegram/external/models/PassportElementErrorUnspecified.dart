part of truecollaboration.telegram_bot.models;

/// Represents an issue in an unspecified place.
/// The error is considered resolved when new data is added.
///
/// https://core.telegram.org/bots/api#passportelementerrorunspecified
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportElementErrorUnspecified extends PassportElementError {
  String elementHash;
  PassportElementErrorUnspecified({
    required String source,
    required EPassportElementErrorType type,
    required String message,
    required this.elementHash,
  }) : super(
    source: source,
    type: type,
    message: message,
  );
  
  factory PassportElementErrorUnspecified.fromJson(JsonObjectEx json) => _$PassportElementErrorUnspecifiedFromJson(json);
  JsonObjectEx toJson() => _$PassportElementErrorUnspecifiedToJson(this);
}
