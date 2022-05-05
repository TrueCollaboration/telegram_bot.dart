part of truecollaboration.telegram_bot.models;

@JsonSerializableEx(fieldRename: FieldRename.snake)
enum EInlineQueryResultType {
  ARTICLE,
  AUDIO,
  DOCUMENT,
  GIF,
  MPEG4GIF,
  PHOTO,
  STICKER,
  VIDEO,
  VOICE,
  CONTACT,
  GAME,
  LOCATION,
  VENUE,
}