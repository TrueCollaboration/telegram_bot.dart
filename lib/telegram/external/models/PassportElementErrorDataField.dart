part of truecollaboration.telegram_bot.models;

/// Represents an issue in one of the data fields that was provided by the user.
/// The error is considered resolved when the field's value changes.
///
/// https://core.telegram.org/bots/api#passportelementerrordatafield
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportElementErrorDataField extends PassportElementError {
  String fieldName;
  String dataHash;
  PassportElementErrorDataField({
    required String source,
    required EPassportElementErrorType type,
    required String message,
    required this.fieldName,
    required this.dataHash,
  }) : super(
    source: source,
    type: type,
    message: message,
  );
  
  factory PassportElementErrorDataField.fromJson(JsonObjectEx json) => _$PassportElementErrorDataFieldFromJson(json);
  JsonObjectEx toJson() => _$PassportElementErrorDataFieldToJson(this);
}
