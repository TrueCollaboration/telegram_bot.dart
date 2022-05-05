part of truecollaboration.telegram_bot.models;

/// Represents a link to a voice message stored on the Telegram servers.
/// By default, this voice message will be sent by the user.
/// Alternatively,
/// you can use *inputMessageContent* to send a message with the specified content instead of the voice message.
///
/// **Note:** This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them
///
/// https://core.telegram.org/bots/api#inlinequeryresultcachedvoice
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultCachedVoice extends InlineQueryResult {
  String voiceFileId;
  String title;
  String? caption;
  String? parseMode;
  List<MessageEntity>? captionEntities;
  InputMessageContent? inputMessageContent;
  InlineQueryResultCachedVoice({
    required String id,
    required this.voiceFileId,
    required this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    this.inputMessageContent,
  }) : super(
    type: EInlineQueryResultType.VOICE,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultCachedVoice.fromJson(JsonObjectEx json) => _$InlineQueryResultCachedVoiceFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultCachedVoiceToJson(this);
}
