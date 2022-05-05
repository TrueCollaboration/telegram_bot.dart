part of truecollaboration.telegram_bot.models;

@JsonSerializableEx(fieldRename: FieldRename.snake)
enum EChatAction {
  TYPING,
  UPLOAD_PHOTO,
  RECORD_VIDEO,
  RECORD_VOICE,
  UPLOAD_VOICE,
  UPLOAD_DOCUMENT,
  CHOOSE_STICKER,
  FIND_LOCATION,
  RECORD_VIDEO_NOTE,
  UPLOAD_VIDEO_NOTE,
}

extension EChatActionExtension on EChatAction {
  String? toJson() => _$EChatActionToJson(this);
}