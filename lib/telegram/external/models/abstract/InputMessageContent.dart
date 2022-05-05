part of truecollaboration.telegram_bot.models;

/// This object represents the content of a message to be sent as a result of an inline query.
/// Telegram clients currently support the following 5 types:
/// * [InputTextMessageContent](https://core.telegram.org/bots/api#inputtextmessagecontent)
/// * [InputLocationMessageContent](https://core.telegram.org/bots/api#inputlocationmessagecontent)
/// * [InputVenueMessageContent](https://core.telegram.org/bots/api#inputvenuemessagecontent)
/// * [InputContactMessageContent](https://core.telegram.org/bots/api#inputcontactmessagecontent)
/// * [InputInvoiceMessageContent](https://core.telegram.org/bots/api#inputinvoicemessagecontent)
///
/// https://core.telegram.org/bots/api#inputmessagecontent
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputMessageContent extends ITelegramModel {
  InputMessageContent();
  
  factory InputMessageContent.fromJson(JsonObjectEx json) => _$InputMessageContentFromJson(json);
  
  @override
  JsonObjectEx toJson() => _$InputMessageContentToJson(this);
}
