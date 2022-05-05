part of truecollaboration.telegram_bot.models;

/// This object represents one size of a photo or a [file] / [sticker] thumbnail.
///
/// https://core.telegram.org/bots/api#poll
///
/// [file]: https://core.telegram.org/bots/api#document
/// [sticker]: https://core.telegram.org/bots/api#sticker
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Poll extends ITelegramModel {
  //TODO ADD TYPE
  static const String REGULAR = 'regular';
  static const String QUIZ = 'quiz';

  String id;
  String question;
  List<PollOption> options;
  int totalVoterCount;
  bool isClosed;
  bool isAnonymous;
  String type;
  bool allowsMultipleAnswers;
  int? correctOptionId;
  String? explanation;
  List<MessageEntity>? explanationEntities;
  int? openPeriod;
  int? closeDate;
  Poll({
    required this.id,
    required this.question,
    required this.options,
    required this.totalVoterCount,
    required this.isClosed,
    required this.isAnonymous,
    required this.type,
    required this.allowsMultipleAnswers,
    this.correctOptionId,
    this.explanation,
    this.explanationEntities,
    this.openPeriod,
    this.closeDate,
  });
  
  factory Poll.fromJson(JsonObjectEx json) => _$PollFromJson(json);
  JsonObjectEx toJson() => _$PollToJson(this);
}
