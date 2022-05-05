part of truecollaboration.telegram_bot.models;

@JsonSerializableEx(fieldRename: FieldRename.snake)
enum EInputMediaType {
  ANIMATION,
  AUDIO,
  DOCUMENT,
  PHOTO,
  VIDEO,
}
  // static const ANIMATION = 'animation';
  // static const AUDIO = 'audio';
  // static const DOCUMENT = 'document';
  // static const PHOTO = 'photo';
  // static const VIDEO = 'video';