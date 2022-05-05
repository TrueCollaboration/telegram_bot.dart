part of truecollaboration.telegram_bot.models;

/// This object represents the content of a media message to be sent. It should be one of
/// * [InputMediaAnimation](https://core.telegram.org/bots/api#inputmediaanimation)
/// * [InputMediaDocument](https://core.telegram.org/bots/api#inputmediadocument)
/// * [InputMediaAudio](https://core.telegram.org/bots/api#inputmediaaudio)
/// * [InputMediaPhoto](https://core.telegram.org/bots/api#inputmediaphoto)
/// * [InputMediaVideo](https://core.telegram.org/bots/api#inputmediavideo)
///
/// https://core.telegram.org/bots/api#inputmedia
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InputMedia extends ITelegramModel {
  EInputMediaType type;
  String media;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;

  InputMedia({
    required this.type,
    required this.media,
    this.caption,
    this.parseMode,
    this.captionEntities,
  });
  
  factory InputMedia.fromJson(JsonObjectEx json) => _$InputMediaFromJson(json);
  
  @override
  JsonObjectEx toJson() => _$InputMediaToJson(this);
}
