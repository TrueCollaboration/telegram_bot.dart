part of truecollaboration.telegram_bot.models;

/// Upon receiving a message with this object,
/// Telegram clients will display a reply interface to the user
/// (act as if the user has selected the bot‘s message and tapped ’Reply').
/// This can be extremely useful if you want to create user-friendly step-by-step interfaces
/// without having to sacrifice [privacy mode].
///
/// **Example:** A [poll bot] for groups runs in privacy mode
/// (only receives commands, replies to its messages and mentions).
/// There could be two ways to create a new poll:
/// * Explain the user how to send a command with parameters (e.g. /newpoll question answer1 answer2).
/// May be appealing for hardcore users but lacks modern day polish.
/// * Guide the user through a step-by-step process. ‘Please send me your question’,
/// ‘Cool, now let’s add the first answer option‘, ’Great. Keep adding answer options,
/// then send /done when you‘re ready’.
///
/// The last option is definitely more attractive.
/// And if you use [ForceReply] in your bot‘s questions,
/// it will receive the user’s answers even if it only receives replies,
/// commands and mentions — without any extra work for the user.
///
/// https://core.telegram.org/bots/api#forcereply
///
/// [privacy mode]: https://core.telegram.org/bots#privacy-mode
/// [poll bot]: https://t.me/PollBot
/// [ForceReply]: https://core.telegram.org/bots/api#forcereply
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ForceReply extends ReplyMarkup {
  bool forceReply = true;
  String? inputFieldPlaceholder;
  bool? selective;
  ForceReply({
    required this.forceReply,
    this.inputFieldPlaceholder,
    this.selective,
  });
  
  factory ForceReply.fromJson(JsonObjectEx json) => _$ForceReplyFromJson(json);
  JsonObjectEx toJson() => _$ForceReplyToJson(this);
}
