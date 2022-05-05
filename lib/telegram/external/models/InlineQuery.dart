part of truecollaboration.telegram_bot.models;

/// This object represents an incoming inline query.
/// When the user sends an empty query,
/// your bot could return some default or trending results.
///
/// https://core.telegram.org/bots/api#inlinequery
@JsonSerializableEx(fieldRename: FieldRename.snake)
class InlineQuery extends ITelegramModel {
  final String id;
  final User from;
  final String query;
  final String offset;
  final String? chatType;
  final Location? location;
  InlineQuery({
    required this.id,
    required this.from,
    required this.query,
    required this.offset,
    this.chatType,
    this.location,
  });
  
  factory InlineQuery.fromJson(JsonObjectEx json) => _$InlineQueryFromJson(json);
  JsonObjectEx toJson() => _$InlineQueryToJson(this);

}