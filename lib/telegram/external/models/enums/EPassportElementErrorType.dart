part of truecollaboration.telegram_bot.models;

@JsonSerializableEx(fieldRename: FieldRename.snake)
enum EPassportElementErrorType {
  PERSONAL_DETAILS,
  PASSPORT,
  DRIVER_LICENSE,
  IDENTITY_CARD,
  INTERNAL_PASSPORT,
  ADDRESS,
}
  // static const String PERSONAL_DETAILS = 'personal_details';
  // static const String PASSPORT = 'passport';
  // static const String DRIVER_LICENSE = 'driver_license';
  // static const String IDENTITY_CARD = 'identity_card';
  // static const String INTERNAL_PASSPORT = 'internal_passport';
  // static const String ADDRESS = 'address';
