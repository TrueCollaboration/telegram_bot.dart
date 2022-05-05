part of truecollaboration.telegram_bot.models;

/// Represents an audio file to be treated as music to be sent.
///
/// https://core.telegram.org/bots/api#inputmediaaudio
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputMediaAudio extends InputMedia {
  dynamic thumb; // InputFile or String
  int? duration;
  String? performer;
  String? title;

  InputMediaAudio({
    required String media,
    this.thumb,
    String? caption,
    String? parseMode,
    List<MessageEntity>? captionEntities,
    this.duration,
    this.performer,
    this.title,
  }) : super(
    type: EInputMediaType.AUDIO,
    media: media,
    caption: caption,
    parseMode: parseMode,
    captionEntities: captionEntities,
  );
  
  factory InputMediaAudio.fromJson(JsonObjectEx json) => _$InputMediaAudioFromJson(json);
  JsonObjectEx toJson() => _$InputMediaAudioToJson(this);
}
