part of truecollaboration.telegram_bot.models;

/// This object represents a Telegram user or bot.
///
/// https://core.telegram.org/bots/api#user
@JsonSerializableEx(fieldRename: FieldRename.snake)
class User extends ITelegramModel {
  int id;
  bool isBot;
  String firstName;
  String? lastName;
  String? username;
  String? languageCode;
  bool? canJoinGroups;
  bool? canReadAllGroupMessages;
  bool? supportsInlineQueries;
  User({
    required this.id,
    required this.isBot,
    required this.firstName,
    this.lastName,
    this.username,
    this.languageCode,
    this.canJoinGroups,
    this.canReadAllGroupMessages,
    this.supportsInlineQueries,
  });
  
  factory User.fromJson(JsonObjectEx json) => _$UserFromJson(json);
  JsonObjectEx toJson() => _$UserToJson(this);
}