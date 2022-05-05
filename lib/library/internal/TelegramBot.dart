part of truecollaboration.telegram_bot;

class _TelegramBot implements TelegramBot {
  @override
  final String token;
  
  @override
  final AbstractUpdateFetcher fetcher;

  @override
  OnGetDioFunction getDioCallback;

  @override
  NetworkTimeouts timeouts;

  @override
  bool get isRunning => fetcher.isRunning;
  
  _TelegramBot({
    required this.token,
    required this.fetcher,
    required this.getDioCallback,
    required this.timeouts,
    required bool syncStream,
  }) : _messageState = StreamController.broadcast(sync: syncStream),
  _editedMessageState = StreamController.broadcast(sync: syncStream),
  _channelPostState = StreamController.broadcast(sync: syncStream),
  _editedChannelPostState = StreamController.broadcast(sync: syncStream),
  _inlineQueryState = StreamController.broadcast(sync: syncStream),
  _chosenInlineResultState = StreamController.broadcast(sync: syncStream),
  _callbackQueryState = StreamController.broadcast(sync: syncStream),
  _shippingQueryState = StreamController.broadcast(sync: syncStream),
  _preCheckoutQueryState = StreamController.broadcast(sync: syncStream),
  _pollState = StreamController.broadcast(sync: syncStream),
  _pollAnswerState = StreamController.broadcast(sync: syncStream),
  _myChatMemberState = StreamController.broadcast(sync: syncStream),
  _chatMemberState = StreamController.broadcast(sync: syncStream),
  _chatJoinRequestState = StreamController.broadcast(sync: syncStream) {
    fetcher.setInstance(this);
  }

  

  final StreamController<Message> _messageState;
  final StreamController<Message> _editedMessageState;
  final StreamController<Message> _channelPostState;
  final StreamController<Message> _editedChannelPostState;
  final StreamController<InlineQuery> _inlineQueryState;
  final StreamController<ChosenInlineResult> _chosenInlineResultState;
  final StreamController<CallbackQuery> _callbackQueryState;
  final StreamController<ShippingQuery> _shippingQueryState;
  final StreamController<PreCheckoutQuery> _preCheckoutQueryState;
  final StreamController<Poll> _pollState;
  final StreamController<PollAnswer> _pollAnswerState;
  final StreamController<ChatMemberUpdated> _myChatMemberState;
  final StreamController<ChatMemberUpdated> _chatMemberState;
  final StreamController<ChatMemberUpdated> _chatJoinRequestState;

  @override
  Future<void> start() {
    fetcher.onUpdate().listen(_onUpdate);
    return fetcher.start();
  }
  
  @override
  Future<void> stop() async {
    return fetcher.stop();
  }
  

  @override
  Stream<TelegramMessage> onMessage() => _messageState.stream.map(_messageStreamMapper);

  @override
  Stream<TelegramMessage> onEditedMessage() => _editedMessageState.stream.map(_messageStreamMapper);

  @override
  Stream<TelegramMessage> onChannelPost() => _channelPostState.stream.map(_messageStreamMapper);

  @override
  Stream<TelegramMessage> onEditedChannelPost() => _editedChannelPostState.stream.map(_messageStreamMapper);

  @override
  Stream<InlineQuery> onInlineQuery() => _inlineQueryState.stream;

  @override
  Stream<ChosenInlineResult> onChosenInlineResult() => _chosenInlineResultState.stream;

  @override
  Stream<CallbackQuery> onCallbackQuery() => _callbackQueryState.stream;

  @override
  Stream<ShippingQuery> onShippingQuery() => _shippingQueryState.stream;

  @override
  Stream<PreCheckoutQuery> onPreCheckoutQuery() => _preCheckoutQueryState.stream;

  @override
  Stream<Poll> onPoll() => _pollState.stream;

  @override
  Stream<PollAnswer> onPollAnswer() => _pollAnswerState.stream;

  @override
  Stream<ChatMemberUpdated> onMyChatMember() => _myChatMemberState.stream;

  @override
  Stream<ChatMemberUpdated> onChatMember() => _chatMemberState.stream;

  @override
  Stream<ChatMemberUpdated> onChatJoinRequest() => _chatJoinRequestState.stream;

  TelegramMessage _messageStreamMapper(Message msg) => TelegramMessage(this, msg);



  @override
  Future<Either<IProcessResult, List<Update>>> getUpdates({
    int? offset,
    int? limit,
    int? timeout,
    List<String>? allowedUpdates,

    NetworkTimeouts? timeouts,
    CancelToken? cancelToken,
  }) => HttpRawApi.getUpdates(
    getDioCallback(),
    timeouts ?? this.timeouts,
    TelegramBot.DEFAULT_HEADERS,
    cancelToken,
    token: token,
    offset: offset,
    limit: limit,
    timeout: timeout,
    allowedUpdates: allowedUpdates,
  );

  @override
  Future<Either<IProcessResult, bool>> deleteMessage({
    required dynamic chatId,
    required int messageId,

    CancelToken? cancelToken,
  }) => HttpRawApi.deleteMessage(
    getDioCallback(),
    timeouts,
    TelegramBot.DEFAULT_HEADERS,
    cancelToken,
    token: token,
    chatId: chatId,
    messageId: messageId,
  );

  @override
  Future<Either<IProcessResult, Message>> replyMessage({
    required dynamic chatId,
    required String text,
    String? parseMode,
    List<MessageEntity>? entities,
    bool? disableWebPagePreview,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,

    CancelToken? cancelToken,
  }) => HttpRawApi.sendMessage(
    getDioCallback(),
    timeouts,
    TelegramBot.DEFAULT_HEADERS,
    cancelToken,
    token: token,
    chatId: chatId,
    text: text,
    parseMode: parseMode,
    entities: entities,
    disableWebPagePreview: disableWebPagePreview,
    disableNotification: disableNotification,
    protectContent: protectContent,
    replyToMessageId: replyToMessageId,
    allowSendingWithoutReply: allowSendingWithoutReply,
    replyMarkup: replyMarkup,
  );

  @override
  Future<Either<IProcessResult, Message>> replyPhoto({
    required dynamic chatId,
    required dynamic photo,
    String? caption,
    String? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,

    CancelToken? cancelToken,
  }) => HttpRawApi.sendPhoto(
    getDioCallback(),
    timeouts,
    TelegramBot.DEFAULT_HEADERS,
    cancelToken,
    token: token,
    chatId: chatId,
    photo: photo,
    caption: caption,
    parseMode: parseMode,
    captionEntities: captionEntities,
    disableNotification: disableNotification,
    protectContent: protectContent,
    replyToMessageId: replyToMessageId,
    allowSendingWithoutReply: allowSendingWithoutReply,
    replyMarkup: replyMarkup,
  );

  // @override
  // Future<Message> replyAudio(Message orgMsg, dynamic audio,
  //         {bool withQuote = false,
  //         String? caption,
  //         String? parse_mode,
  //         List<MessageEntity>? caption_entities,
  //         int? duration,
  //         String? performer,
  //         String? title,
  //         dynamic thumb,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendAudio(orgMsg.chat.id, audio,
  //         caption: caption,
  //         parse_mode: parse_mode,
  //         caption_entities: caption_entities,
  //         duration: duration,
  //         performer: performer,
  //         title: title,
  //         thumb: thumb,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> replyDocument(Message orgMsg, dynamic document,
  //         {bool withQuote = false,
  //         dynamic thumb,
  //         String? caption,
  //         String? parse_mode,
  //         List<MessageEntity>? caption_entities,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendDocument(orgMsg.chat.id, document,
  //         thumb: thumb,
  //         caption: caption,
  //         parse_mode: parse_mode,
  //         caption_entities: caption_entities,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> replyVideo(Message orgMsg, dynamic video,
  //         {bool withQuote = false,
  //         int? duration,
  //         int? width,
  //         int? height,
  //         dynamic thumb,
  //         String? caption,
  //         String? parse_mode,
  //         List<MessageEntity>? caption_entities,
  //         bool? supports_streaming,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendVideo(orgMsg.chat.id, video,
  //         duration: duration,
  //         width: width,
  //         height: height,
  //         thumb: thumb,
  //         caption: caption,
  //         parse_mode: parse_mode,
  //         caption_entities: caption_entities,
  //         supports_streaming: supports_streaming,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> replyAnimation(Message orgMsg, dynamic animation,
  //         {bool withQuote = false,
  //         int? duration,
  //         int? width,
  //         int? height,
  //         dynamic thumb,
  //         String? caption,
  //         String? parse_mode,
  //         List<MessageEntity>? caption_entities,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendAnimation(orgMsg.chat.id, animation,
  //         duration: duration,
  //         width: width,
  //         height: height,
  //         thumb: thumb,
  //         caption: caption,
  //         parse_mode: parse_mode,
  //         caption_entities: caption_entities,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> replyVoice(Message orgMsg, dynamic voice,
  //         {bool withQuote = false,
  //         String? caption,
  //         String? parse_mode,
  //         List<MessageEntity>? caption_entities,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendVoice(orgMsg.chat.id, voice,
  //         caption: caption,
  //         parse_mode: parse_mode,
  //         caption_entities: caption_entities,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> replyVideoNote(Message orgMsg, dynamic video_note,
  //         {bool withQuote = false,
  //         int? duration,
  //         int? length,
  //         dynamic thumb,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendVideoNote(orgMsg.chat.id, video_note,
  //         duration: duration,
  //         length: length,
  //         thumb: thumb,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<List<Message>> replyMediaGroup(Message orgMsg, List<InputMedia> media,
  //         {bool withQuote = false,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply}) =>
  //     telegram.sendMediaGroup(orgMsg.chat.id, media,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply);

  // @override
  // Future<Message> replyLocation(
  //         Message orgMsg, double latitude, double longitude,
  //         {bool withQuote = false,
  //         double? horizontal_accuracy,
  //         int? live_period,
  //         int? heading,
  //         int? proximity_alert_radius,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendLocation(orgMsg.chat.id, latitude, longitude,
  //         horizontal_accuracy: horizontal_accuracy,
  //         live_period: live_period,
  //         heading: heading,
  //         proximity_alert_radius: proximity_alert_radius,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> editLiveLocation(double latitude, double longitude,
  //         {dynamic chat_id,
  //         int? message_id,
  //         String? inline_message_id,
  //         double? horizontal_accuracy,
  //         int? heading,
  //         int? proximity_alert_radius,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.editMessageLiveLocation(latitude, longitude,
  //         chat_id: chat_id,
  //         message_id: message_id,
  //         inline_message_id: inline_message_id,
  //         horizontal_accuracy: horizontal_accuracy,
  //         heading: heading,
  //         proximity_alert_radius: proximity_alert_radius,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> stopLiveLocation(
  //         {dynamic chat_id,
  //         int? message_id,
  //         String? inline_message_id,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.stopMessageLiveLocation(
  //         chat_id: chat_id,
  //         message_id: message_id,
  //         inline_message_id: inline_message_id,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> replyVenue(Message orgMsg, double latitude, double longitude,
  //         String title, String address,
  //         {bool withQuote = false,
  //         String? foursquare_id,
  //         String? foursquare_type,
  //         String? google_place_id,
  //         String? google_place_type,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendVenue(orgMsg.chat.id, latitude, longitude, title, address,
  //         foursquare_id: foursquare_id,
  //         foursquare_type: foursquare_type,
  //         google_place_id: google_place_id,
  //         google_place_type: google_place_type,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> replyContact(
  //         Message orgMsg, String phone_number, String first_name,
  //         {bool withQuote = false,
  //         String? last_name,
  //         String? vcard,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendContact(orgMsg.chat.id, phone_number, first_name,
  //         last_name: last_name,
  //         vcard: vcard,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> replyPoll(
  //         Message orgMsg, String question, List<String> options,
  //         {bool withQuote = false,
  //         bool? is_anonymous,
  //         String? type,
  //         bool? allows_multiple_answers,
  //         int? correct_option_id,
  //         String? explanation,
  //         String? explanation_parse_mode,
  //         List<MessageEntity>? explanation_entities,
  //         int? open_period,
  //         int? close_date,
  //         bool? is_closed,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendPoll(orgMsg.chat.id, question, options,
  //         is_anonymous: is_anonymous,
  //         type: type,
  //         allows_multiple_answers: allows_multiple_answers,
  //         correct_option_id: correct_option_id,
  //         explanation: explanation,
  //         explanation_parse_mode: explanation_parse_mode,
  //         explanation_entities: explanation_entities,
  //         open_period: open_period,
  //         close_date: close_date,
  //         is_closed: is_closed,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<Message> replyDice(Message orgMsg,
  //         {bool withQuote = false,
  //         String emoji = Dice.DICE,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     telegram.sendDice(orgMsg.chat.id,
  //         emoji: emoji,
  //         disable_notification: disable_notification,
  //         reply_to_message_id: withQuote ? orgMsg.message_id : null,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // @override
  // Future<bool> answerInlineQuery(
  //         InlineQuery inline_query, List<InlineQueryResult> results,
  //         {int? cache_time,
  //         bool? is_personal,
  //         String? next_offset,
  //         String? switch_pm_text,
  //         String? switch_pm_parameter}) =>
  //     telegram.answerInlineQuery(inline_query.id, results,
  //         cache_time: cache_time,
  //         is_personal: is_personal,
  //         next_offset: next_offset,
  //         switch_pm_text: switch_pm_text,
  //         switch_pm_parameter: switch_pm_parameter);

  // @override
  // Future<bool> answerCallbackQuery(CallbackQuery callback_query,
  //         {String? text, bool? show_alert, String? url, int? cache_time}) =>
  //     telegram.answerCallbackQuery(callback_query.id,
  //         text: text, show_alert: show_alert, url: url, cache_time: cache_time);

  // @override
  // Future<bool> answerShippingQuery(ShippingQuery shipping_query, bool ok,
  //         {List<ShippingOption>? shipping_options, String? error_message}) =>
  //     telegram.answerShippingQuery(shipping_query.id, ok,
  //         shipping_options: shipping_options, error_message: error_message);

  // @override
  // Future<bool> answerPreCheckoutQuery(
  //         PreCheckoutQuery pre_checkout_query, bool ok,
  //         {String? error_message}) =>
  //     telegram.answerPreCheckoutQuery(pre_checkout_query.id, ok,
  //         error_message: error_message);











  void _onUpdate(Update update) {
    if (update.message != null) {
      _messageState.add(update.message!);

    } else if (update.editedMessage != null) {
      _editedMessageState.add(update.editedMessage!);

    } else if (update.channelPost != null) {
      _channelPostState.add(update.channelPost!);

    } else if (update.editedChannelPost != null) {
      _editedChannelPostState.add(update.editedChannelPost!);

    } else if (update.inlineQuery != null) {
      _inlineQueryState.add(update.inlineQuery!);

    } else if (update.chosenInlineResult != null) {
      _chosenInlineResultState.add(update.chosenInlineResult!);

    } else if (update.callbackQuery != null) {
      _callbackQueryState.add(update.callbackQuery!);

    } else if (update.shippingQuery != null) {
      _shippingQueryState.add(update.shippingQuery!);

    } else if (update.preCheckoutQuery != null) {
      _preCheckoutQueryState.add(update.preCheckoutQuery!);

    } else if (update.poll != null) {
      _pollState.add(update.poll!);

    } else if (update.pollAnswer != null) {
      _pollAnswerState.add(update.pollAnswer!);

    } else if (update.myChatMember != null) {
      _myChatMemberState.add(update.myChatMember!);

    } else if (update.chatMember != null) {
      _chatMemberState.add(update.chatMember!);

    } else if (update.chatJoinRequest != null) {
      _chatJoinRequestState.add(update.chatJoinRequest!);

    } else {
      throw Exception('Receieved unrecognised update');
    }

  }
}