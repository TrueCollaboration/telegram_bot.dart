part of truecollaboration.telegram_bot.models;

/// This object represents a chat photo.
///
/// https://core.telegram.org/bots/api#chatphoto
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatPhoto extends ITelegramModel {
  String smallFileId;
  String smallFileUniqueId;
  String bigFileId;
  String bigFileUniqueId;
  ChatPhoto({
    required this.smallFileId,
    required this.smallFileUniqueId,
    required this.bigFileId,
    required this.bigFileUniqueId,
  });
  
  factory ChatPhoto.fromJson(JsonObjectEx json) => _$ChatPhotoFromJson(json);
  JsonObjectEx toJson() => _$ChatPhotoToJson(this);
}
