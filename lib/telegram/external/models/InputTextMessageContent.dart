part of truecollaboration.telegram_bot.models;

/// Represents the [content] of a text message to be sent as the result of an inline query.
///
/// https://core.telegram.org/bots/api#inputtextmessagecontent
///
/// [content]: https://core.telegram.org/bots/api#inputmessagecontent
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputTextMessageContent extends InputMessageContent {
  String messageText;
  String? parseMode;
  List<MessageEntity>? entities;
  bool? disableWebPagePreview;
  InputTextMessageContent({
    required this.messageText,
    this.parseMode,
    this.disableWebPagePreview,
  });
  
  factory InputTextMessageContent.fromJson(JsonObjectEx json) => _$InputTextMessageContentFromJson(json);
  JsonObjectEx toJson() => _$InputTextMessageContentToJson(this);
}
