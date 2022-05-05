part of truecollaboration.telegram_bot.models;

@JsonSerializableEx(fieldRename: FieldRename.snake)
enum EChatMemberStatus {
  CREATOR,
  ADMINISTRATOR,
  MEMBER,
  RESTRICTED,
  LEFT,
  KICKED,
}