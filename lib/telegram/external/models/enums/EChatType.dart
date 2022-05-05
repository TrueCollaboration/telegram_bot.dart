part of truecollaboration.telegram_bot.models;

@JsonSerializableEx(fieldRename: FieldRename.snake)
enum EChatType {
  PRIVATE,
  GROUP,
  SUPERGROUP,
  CHANNEL,
}