part of truecollaboration.telegram_bot.models;

/// This object represents one size of a photo or a [file] / [sticker] thumbnail.
///
/// https://core.telegram.org/bots/api#polloption
///
/// [file]: https://core.telegram.org/bots/api#document
/// [sticker]: https://core.telegram.org/bots/api#sticker
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PollOption extends ITelegramModel {
  String text;
  int voterCount;
  PollOption({
    required this.text,
    required this.voterCount,
  });
  
  factory PollOption.fromJson(JsonObjectEx json) => _$PollOptionFromJson(json);
  JsonObjectEx toJson() => _$PollOptionToJson(this);
}
