part of truecollaboration.telegram_bot.models;

/// This object represents type of a poll, which is allowed to be created and sent when the corresponding button is pressed.
///
/// https://core.telegram.org/bots/api#pollanswer
@JsonSerializableEx(fieldRename: FieldRename.snake)
class PollAnswer extends ITelegramModel {
  String pollId;
  User user;
  List<int> optionIds;
  PollAnswer({
    required this.pollId,
    required this.user,
    required this.optionIds,
  });
  
  factory PollAnswer.fromJson(JsonObjectEx json) => _$PollAnswerFromJson(json);
  JsonObjectEx toJson() => _$PollAnswerToJson(this);
}
