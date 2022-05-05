part of truecollaboration.telegram_bot.models;

/// Represents a link to an mp3 audio file stored on the Telegram servers.
/// By default, this audio file will be sent by the user.
/// Alternatively,
///  you can use *inputMessageContent* to send a message with the specified content instead of the audio.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them
///
/// https://core.telegram.org/bots/api#inlinequeryresultcachedaudio
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultCachedAudio extends InlineQueryResult {
  String audioFileId;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;
  InlineQueryResultCachedAudio({
    required String id,
    required this.audioFileId,
    this.caption,
    this.parseMode,
    this.captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.AUDIO,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultCachedAudio.fromJson(JsonObjectEx json) => _$InlineQueryResultCachedAudioFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultCachedAudioToJson(this);
}
