part of truecollaboration.telegram_bot.models;

/// Represents a video to be sent.
///
/// https://core.telegram.org/bots/api#inputmediavideo
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputMediaVideo extends InputMedia {
  dynamic thumb; // InputFile or String
  int? width;
  int? height;
  int? duration;
  bool? supportsStreaming;

  InputMediaVideo({
    required String media,
    String? caption,
    String? parseMode,
    List<MessageEntity>? captionEntities,
    this.thumb,
    this.width,
    this.height,
    this.duration,
    this.supportsStreaming,
  }) : super(
    type: EInputMediaType.VIDEO,
    media: media,
    caption: caption,
    parseMode: parseMode,
    captionEntities: captionEntities,
  );
  
  factory InputMediaVideo.fromJson(JsonObjectEx json) => _$InputMediaVideoFromJson(json);
  JsonObjectEx toJson() => _$InputMediaVideoToJson(this);
}
