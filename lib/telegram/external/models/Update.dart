part of truecollaboration.telegram_bot.models;

/// This object represents an incoming update.
/// At most one of the optional parameters can be present in any given update.
///
/// https://core.telegram.org/bots/api#update
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Update extends ITelegramModel {
  final int updateId;
  final Message? message;
  final Message? editedMessage;
  final Message? channelPost;
  final Message? editedChannelPost;
  final InlineQuery? inlineQuery;
  final ChosenInlineResult? chosenInlineResult;
  final CallbackQuery? callbackQuery;
  final ShippingQuery? shippingQuery;
  final PreCheckoutQuery? preCheckoutQuery;
  final Poll? poll;
  final PollAnswer? pollAnswer;
  final ChatMemberUpdated? myChatMember;
  final ChatMemberUpdated? chatMember;
  final ChatMemberUpdated? chatJoinRequest;
  Update({
    required this.updateId,
    this.message,
    this.editedMessage,
    this.channelPost,
    this.editedChannelPost,
    this.inlineQuery,
    this.chosenInlineResult,
    this.callbackQuery,
    this.shippingQuery,
    this.preCheckoutQuery,
    this.poll,
    this.pollAnswer,
    this.myChatMember,
    this.chatMember,
    this.chatJoinRequest,
  });
  
  factory Update.fromJson(JsonObjectEx json) => _$UpdateFromJson(json);
  JsonObjectEx toJson() => _$UpdateToJson(this);
}
