part of truecollaboration.telegram_bot.models;

/// This object represent a user's profile pictures.
///
/// https://core.telegram.org/bots/api#userprofilephotos
@JsonSerializableEx(fieldRename: FieldRename.snake)
class UserProfilePhotos extends ITelegramModel {
  int totalCount;
  List<List<PhotoSize>> photos;
  UserProfilePhotos({
    required this.totalCount,
    required this.photos,
  });
  
  factory UserProfilePhotos.fromJson(JsonObjectEx json) => _$UserProfilePhotosFromJson(json);
  JsonObjectEx toJson() => _$UserProfilePhotosToJson(this);
}
