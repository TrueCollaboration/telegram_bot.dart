part of truecollaboration.telegram_bot.models;

/// This object represents one special entity in a text message. For example, hashtags, usernames, URLs, etc.
///
/// https://core.telegram.org/bots/api#messageentity
@JsonSerializableEx(fieldRename: FieldRename.snake)
class MessageEntity extends ITelegramModel {
  String type;
  int offset;
  int length;
  String? url;
  User? user;
  String? language;
  MessageEntity({
    required this.type,
    required this.offset,
    required this.length,
    this.url,
    this.user,
    this.language,
  });
  
  factory MessageEntity.fromJson(JsonObjectEx json) => _$MessageEntityFromJson(json);
  JsonObjectEx toJson() => _$MessageEntityToJson(this);
}
