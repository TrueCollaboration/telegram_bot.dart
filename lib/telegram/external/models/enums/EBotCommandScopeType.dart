part of truecollaboration.telegram_bot.models;

@JsonSerializableEx(fieldRename: FieldRename.snake)
enum EBotCommandScopeType {
  DEFAULT,

  ALL_PRIVATE_CHATS,

  ALL_GROUP_CHATS,

  ALL_CHAT_ADMINISTRATORS,

  CHAT,
  CHAT_ADMINISTRATORS,
  CHAT_MEMBER,
}