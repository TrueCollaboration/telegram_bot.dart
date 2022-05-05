part of truecollaboration.telegram_bot.models;

/// Represents a contact with a phone number.
/// By default, the contact will be sent by the user.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the contact.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
///
/// https://core.telegram.org/bots/api#inlinequeryresultcontact
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultContact extends InlineQueryResult {
  String phoneNumber;
  String firstName;
  String? lastName;
  String? vcard;
  InputMessageContent? inputMessageContent;
  String? thumbUrl;
  int? thumbWidth;
  int? thumbHeight;
  InlineQueryResultContact({
    required String id,
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.vcard,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
    this.thumbUrl,
    this.thumbWidth,
    this.thumbHeight,
  }) : super(
    type: EInlineQueryResultType.CONTACT,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultContact.fromJson(JsonObjectEx json) => _$InlineQueryResultContactFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultContactToJson(this);
}
