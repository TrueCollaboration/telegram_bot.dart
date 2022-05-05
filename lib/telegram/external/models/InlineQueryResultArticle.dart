part of truecollaboration.telegram_bot.models;

/// Represents a link to an article or web page.
///
/// https://core.telegram.org/bots/api#inlinequeryresultarticle
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQueryResultArticle extends InlineQueryResult {
  String title;
  InputMessageContent inputMessageContent;
  String? url;
  bool? hideUrl;
  String? description;
  String? thumbUrl;
  String? thumbWidth;
  String? thumbHeight;
  InlineQueryResultArticle({
    required String id,
    required this.title,
    required this.inputMessageContent,
    InlineKeyboardMarkup? replyMarkup,
    this.url,
    this.hideUrl,
    this.description,
    this.thumbUrl,
    this.thumbWidth,
    this.thumbHeight,
  }) : super(
    type: EInlineQueryResultType.ARTICLE,
    id: id,
    replyMarkup: replyMarkup,
  );
  
  factory InlineQueryResultArticle.fromJson(JsonObjectEx json) => _$InlineQueryResultArticleFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryResultArticleToJson(this);
}
