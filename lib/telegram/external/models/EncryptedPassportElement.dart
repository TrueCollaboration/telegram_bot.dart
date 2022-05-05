part of truecollaboration.telegram_bot.models;

/// Contains information about documents or other Telegram Passport elements shared with the bot by the user.
///
/// https://core.telegram.org/bots/api#encryptedpassportelement
@JsonSerializableEx(fieldRename: FieldRename.snake)
class EncryptedPassportElement extends ITelegramModel {
  static const PERSONAL_DETAILS = 'personal_details';
  static const PASSPORT = 'passport';
  static const DRIVER_LICENSE = 'driver_license';
  static const IDENTITY_CARD = 'identity_card';
  static const INTERNAL_PASSPORT = 'internal_passport';
  static const ADDRESS = 'address';
  static const UTILITY_BILL = 'utility_bill';
  static const BANK_STATEMENT = 'bank_statement';
  static const RENTAL_AGREEMENT = 'rental_agreement';
  static const PASSPORT_REGISTRATION = 'passport_registration';
  static const TEMPORARY_REGISTRATION = 'temporary_registration';
  static const PHONE_NUMBER = 'phone_number';
  static const EMAIL = 'email';

  String type;
  String? data;
  String? phoneNumber;
  String? email;
  List<PassportFile>? files;
  PassportFile? frontSide;
  PassportFile? reverseSide;
  PassportFile? selfie;
  List<PassportFile>? translation;
  String hash;
  EncryptedPassportElement({
    required this.type,
    this.data,
    this.phoneNumber,
    this.email,
    this.files,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
    required this.hash,
  });
  
  factory EncryptedPassportElement.fromJson(JsonObjectEx json) => _$EncryptedPassportElementFromJson(json);
  JsonObjectEx toJson() => _$EncryptedPassportElementToJson(this);
}
