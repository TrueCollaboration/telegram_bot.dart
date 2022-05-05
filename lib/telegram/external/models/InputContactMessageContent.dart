part of truecollaboration.telegram_bot.models;

/// Represents the [content] of a contact message to be sent as the result of an inline query.
///
/// https://core.telegram.org/bots/api#inputcontactmessagecontent
///
/// [content]: https://core.telegram.org/bots/api#inputmessagecontent
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputContactMessageContent extends InputMessageContent {
  String phoneNumber;
  String firstName;
  String? lastName;
  String? vcard;
  InputContactMessageContent({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.vcard,
  });
  
  factory InputContactMessageContent.fromJson(JsonObjectEx json) => _$InputContactMessageContentFromJson(json);
  JsonObjectEx toJson() => _$InputContactMessageContentToJson(this);
}
