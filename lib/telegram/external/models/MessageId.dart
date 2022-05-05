part of truecollaboration.telegram_bot.models;

/// This object represents an animated emoji that displays a random value.
///
/// https://core.telegram.org/bots/api#messageid
@JsonSerializableEx(fieldRename: FieldRename.snake)
class MessageId extends ITelegramModel {
  int messageId;
  MessageId({
    required this.messageId,
  });
  
  factory MessageId.fromJson(JsonObjectEx json) => _$MessageIdFromJson(json);
  JsonObjectEx toJson() => _$MessageIdToJson(this);
}
