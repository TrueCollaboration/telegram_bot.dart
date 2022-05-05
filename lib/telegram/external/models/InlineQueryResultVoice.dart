part of truecollaboration.telegram_bot.models;

/// Represents a link to a voice recording in an .ogg container encoded with OPUS.
/// By default, this voice recording will be sent by the user.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the the voice message.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
///
/// https://core.telegram.org/bots/api#inlinequeryresultvoice
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultVoice extends InlineQueryResult {
  String voiceUrl;
  String title;
  String? caption;
  String? parseMode;
  int? voiceDuration;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;

  InlineQueryResultVoice({
    required String id,
    required this.voiceUrl,
    required this.title,
    this.caption,
    this.parseMode,
    this.voiceDuration,
    this.captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.VOICE,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultVoice.fromJson(JsonObjectEx json) => _$InlineQueryResultVoiceFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultVoiceToJson(this);
}
