part of truecollaboration.telegram_bot.models;

/// Represents an animation file (GIF or H.264/MPEG-4 AVC video without sound) to be sent.
///
/// https://core.telegram.org/bots/api#inputmediaanimation
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputMediaAnimation extends InputMedia {
  dynamic thumb; // InputFile or String
  int? width;
  int? height;
  int? duration;

  InputMediaAnimation({
    required String media,
    this.thumb,
    String? caption,
    String? parseMode,
    List<MessageEntity>? captionEntities,
    this.width,
    this.height,
    this.duration,
  }) : super(
    type: EInputMediaType.ANIMATION,
    media: media,
    caption: caption,
    parseMode: parseMode,
    captionEntities: captionEntities,
  );
  
  factory InputMediaAnimation.fromJson(JsonObjectEx json) => _$InputMediaAnimationFromJson(json);
  JsonObjectEx toJson() => _$InputMediaAnimationToJson(this);
}
