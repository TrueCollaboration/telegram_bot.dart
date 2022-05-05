part of truecollaboration.telegram_bot.models;

/// This object represents an error in the Telegram Passport element which was submitted that should be resolved by the user.
/// It should be one of:
/// * [PassportElementErrorDataField](https://core.telegram.org/bots/api#passportelementerrordatafield)
/// * [PassportElementErrorFrontSide](https://core.telegram.org/bots/api#passportelementerrorfrontside)
/// * [PassportElementErrorReverseSide](https://core.telegram.org/bots/api#passportelementerrorreverseside)
/// * [PassportElementErrorSelfie](https://core.telegram.org/bots/api#passportelementerrorselfie)
/// * [PassportElementErrorFile](https://core.telegram.org/bots/api#passportelementerrorfile)
/// * [PassportElementErrorFiles](https://core.telegram.org/bots/api#passportelementerrorfiles)
/// * [PassportElementErrorTranslationFile](https://core.telegram.org/bots/api#passportelementerrortranslationfile)
/// * [PassportElementErrorTranslationFiles](https://core.telegram.org/bots/api#passportelementerrortranslationfiles)
/// * [PassportElementErrorUnspecified](https://core.telegram.org/bots/api#passportelementerrorunspecified)
///
/// https://core.telegram.org/bots/api#passportelementerror
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PassportElementError extends ITelegramModel {
  String source;
  EPassportElementErrorType type;
  String message;
  PassportElementError({
    required this.source,
    required this.type,
    required this.message,
  });
  
  factory PassportElementError.fromJson(JsonObjectEx json) => _$PassportElementErrorFromJson(json);
  
  @override
  JsonObjectEx toJson() => _$PassportElementErrorToJson(this);
}
