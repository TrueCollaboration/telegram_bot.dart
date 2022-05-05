part of truecollaboration.telegram_bot.models;

/// This object represents a phone contact.
///
/// https://core.telegram.org/bots/api#contact
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Contact extends ITelegramModel {
  String phoneNumber;
  String firstName;
  String? lastName;
  int? userId;
  String? vcard;
  Contact({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.userId,
    this.vcard,
  });
  
  factory Contact.fromJson(JsonObjectEx json) => _$ContactFromJson(json);
  JsonObjectEx toJson() => _$ContactToJson(this);
}
