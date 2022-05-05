part of truecollaboration.telegram_bot.models;

/// Represents a link to an mp3 audio file.
/// By default, this audio file will be sent by the user.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the audio.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
///
/// https://core.telegram.org/bots/api#inlinequeryresultaudio
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultAudio extends InlineQueryResult {
  String audioUrl;
  String title;
  String? caption;
  String? parseMode;
  String? performer;
  int? audioDuration;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;

  InlineQueryResultAudio({
    required String id,
    required this.audioUrl,
    required this.title,
    this.caption,
    this.parseMode,
    this.performer,
    this.audioDuration,
    this.captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.AUDIO,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultAudio.fromJson(JsonObjectEx json) => _$InlineQueryResultAudioFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultAudioToJson(this);
}
