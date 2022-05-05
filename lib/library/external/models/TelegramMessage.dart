part of truecollaboration.telegram_bot;

class TelegramMessage extends Message {
  final TelegramBot _instance;

  TelegramMessage(this._instance, Message message)
    : super(
        messageId: message.messageId,
        from: message.from,
        senderChat: message.senderChat,
        date: message.date,
        chat: message.chat,
        forwardFrom: message.forwardFrom,
        forwardFromChat: message.forwardFromChat,
        forwardFromMessageId: message.forwardFromMessageId,
        forwardSignature: message.forwardSignature,
        forwardSenderName: message.forwardSenderName,
        forwardDate: message.forwardDate,
        isAutomaticForward: message.isAutomaticForward,
        replyToMessage: message.replyToMessage,
        viaBot: message.viaBot,
        editDate: message.editDate,
        hasProtectedContent: message.hasProtectedContent,
        mediaGroupId: message.mediaGroupId,
        authorSignature: message.authorSignature,
        text: message.text,
        entities: message.entities,
        animation: message.animation,
        audio: message.audio,
        document: message.document,
        photo: message.photo,
        sticker: message.sticker,
        video: message.video,
        videoNote: message.videoNote,
        voice: message.voice,
        caption: message.caption,
        captionEntities: message.captionEntities,
        contact: message.contact,
        dice: message.dice,
        game: message.game,
        poll: message.poll,
        venue: message.venue,
        location: message.location,
        newChatMembers: message.newChatMembers,
        leftChatMember: message.leftChatMember,
        newChatTitle: message.newChatTitle,
        newChatPhoto: message.newChatPhoto,
        deleteChatPhoto: message.deleteChatPhoto,
        groupChatCreated: message.groupChatCreated,
        supergroupChatCreated: message.supergroupChatCreated,
        channelChatCreated: message.channelChatCreated,
        messageAutoDeleteTimerChanged: message.messageAutoDeleteTimerChanged,
        migrateToChatId: message.migrateToChatId,
        migrateFromChatId: message.migrateFromChatId,
        pinnedMessage: message.pinnedMessage,
        invoice: message.invoice,
        successfulPayment: message.successfulPayment,
        connectedWebsite: message.connectedWebsite,
        passportData: message.passportData,
        proximityAlertTriggered: message.proximityAlertTriggered,
        voiceChatScheduled: message.voiceChatScheduled,
        voiceChatStarted: message.voiceChatStarted,
        voiceChatEnded: message.voiceChatEnded,
        voiceChatParticipantsInvited: message.voiceChatParticipantsInvited,
        replyMarkup: message.replyMarkup,
  );

  Future<Either<IProcessResult, bool>> delete({

    CancelToken? cancelToken,
  }) => _instance.deleteMessage(
    chatId: chat.id,
    messageId: messageId,

    cancelToken: cancelToken,
  );

  /// Short-cut to reply with a text message
  Future<Either<IProcessResult, Message>> reply(
    String text, {
      bool withQuote = false,
      String? parseMode,
      List<MessageEntity>? entities,
      bool? disableWebPagePreview,
      bool? disableNotification,
      bool? protectContent,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,

      CancelToken? cancelToken,
  }) => _instance.replyMessage(
    chatId: chat.id,
    text: text,
    parseMode: parseMode,
    entities: entities,
    disableWebPagePreview: disableWebPagePreview,
    disableNotification: disableNotification,
    protectContent: protectContent,
    replyToMessageId: withQuote ? messageId : null,
    allowSendingWithoutReply: allowSendingWithoutReply,
    replyMarkup: replyMarkup,

    cancelToken: cancelToken,
  );

  /// Short-cut to reply with a photo message
  Future<Either<IProcessResult, Message>> replyPhoto(
    dynamic photo, {
      bool withQuote = false,
      String? caption,
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,

      CancelToken? cancelToken,
  }) => _instance.replyPhoto(
    chatId: chat.id,
    photo: photo,
    caption: caption,
    parseMode: parseMode,
    captionEntities: captionEntities,
    disableNotification: disableNotification,
    protectContent: protectContent,
    replyToMessageId: withQuote ? messageId : null,
    allowSendingWithoutReply: allowSendingWithoutReply,
    replyMarkup: replyMarkup,

    cancelToken: cancelToken,
  );

  // Future<Message> replyAudio(
  //   dynamic audio, {
  //   bool withQuote = false,
  //   String? caption,
  //   String? parse_mode,
  //   List<MessageEntity>? caption_entities,
  //   int? duration,
  //   String? performer,
  //   String? title,
  //   dynamic thumb,
  //   bool? disable_notification,
  //   bool? allow_sending_without_reply,
  //   ReplyMarkup? reply_markup,
  // }) =>
  //     _instance.replyAudio(this, audio,
  //         withQuote: withQuote,
  //         caption: caption,
  //         parse_mode: parse_mode,
  //         caption_entities: caption_entities,
  //         duration: duration,
  //         performer: performer,
  //         title: title,
  //         thumb: thumb,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a document message
  // Future<Message> replyDocument(
  //   dynamic document, {
  //   bool withQuote = false,
  //   dynamic thumb,
  //   String? caption,
  //   String? parse_mode,
  //   List<MessageEntity>? caption_entities,
  //   bool? disable_notification,
  //   bool? allow_sending_without_reply,
  //   ReplyMarkup? reply_markup,
  // }) =>
  //     _instance.replyDocument(this, document,
  //         withQuote: withQuote,
  //         thumb: thumb,
  //         caption: caption,
  //         parse_mode: parse_mode,
  //         caption_entities: caption_entities,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a video message
  // Future<Message> replyVideo(
  //   dynamic video, {
  //   bool withQuote = false,
  //   int? duration,
  //   int? width,
  //   int? height,
  //   dynamic thumb,
  //   String? caption,
  //   String? parse_mode,
  //   List<MessageEntity>? caption_entities,
  //   bool? supports_streaming,
  //   bool? disable_notification,
  //   bool? allow_sending_without_reply,
  //   ReplyMarkup? reply_markup,
  // }) =>
  //     _instance.replyVideo(this, video,
  //         withQuote: withQuote,
  //         duration: duration,
  //         width: width,
  //         height: height,
  //         thumb: thumb,
  //         caption: caption,
  //         parse_mode: parse_mode,
  //         caption_entities: caption_entities,
  //         supports_streaming: supports_streaming,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a animation message
  // Future<Message> replyAnimation(
  //   dynamic animation, {
  //   bool withQuote = false,
  //   int? duration,
  //   int? width,
  //   int? height,
  //   dynamic thumb,
  //   String? caption,
  //   String? parse_mode,
  //   List<MessageEntity>? caption_entities,
  //   bool? disable_notification,
  //   bool? allow_sending_without_reply,
  //   ReplyMarkup? reply_markup,
  // }) =>
  //     _instance.replyAnimation(this, animation,
  //         withQuote: withQuote,
  //         duration: duration,
  //         width: width,
  //         height: height,
  //         thumb: thumb,
  //         caption: caption,
  //         parse_mode: parse_mode,
  //         caption_entities: caption_entities,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a voice message
  // Future<Message> replyVoice(
  //   dynamic voice, {
  //   bool withQuote = false,
  //   String? caption,
  //   String? parse_mode,
  //   List<MessageEntity>? caption_entities,
  //   bool? disable_notification,
  //   bool? allow_sending_without_reply,
  //   ReplyMarkup? reply_markup,
  // }) =>
  //     _instance.replyVoice(this, voice,
  //         withQuote: withQuote,
  //         caption: caption,
  //         parse_mode: parse_mode,
  //         caption_entities: caption_entities,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a video note message
  // Future<Message> replyVideoNote(
  //   dynamic video_note, {
  //   bool withQuote = false,
  //   int? duration,
  //   int? length,
  //   dynamic thumb,
  //   bool? disable_notification,
  //   bool? allow_sending_without_reply,
  //   ReplyMarkup? reply_markup,
  // }) =>
  //     _instance.replyVideoNote(this, video_note,
  //         withQuote: withQuote,
  //         duration: duration,
  //         length: length,
  //         thumb: thumb,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a media group message
  // Future<List<Message>> replyMediaGroup(
  //   List<InputMedia> media, {
  //   bool withQuote = false,
  //   bool? disable_notification,
  //   bool? allow_sending_without_reply,
  // }) =>
  //     _instance.replyMediaGroup(this, media,
  //         withQuote: withQuote,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply);

  // /// Short-cut to reply with a location message
  // Future<Message> replyLocation(
  //   double latitude,
  //   double longitude, {
  //   bool withQuote = false,
  //   double? horizontal_accuracy,
  //   int? live_period,
  //   int? heading,
  //   int? proximity_alert_radius,
  //   bool? disable_notification,
  //   bool? allow_sending_without_reply,
  //   ReplyMarkup? reply_markup,
  // }) =>
  //     _instance.replyLocation(this, latitude, longitude,
  //         withQuote: withQuote,
  //         horizontal_accuracy: horizontal_accuracy,
  //         live_period: live_period,
  //         heading: heading,
  //         proximity_alert_radius: proximity_alert_radius,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a venue message
  // Future<Message> replyVenue(
  //   double latitude,
  //   double longitude,
  //   String title,
  //   String address, {
  //   bool withQuote = false,
  //   String? foursquare_id,
  //   String? foursquare_type,
  //   String? google_place_id,
  //   String? google_place_type,
  //   bool? disable_notification,
  //   bool? allow_sending_without_reply,
  //   ReplyMarkup? reply_markup,
  // }) =>
  //     _instance.replyVenue(this, latitude, longitude, title, address,
  //         withQuote: withQuote,
  //         foursquare_id: foursquare_id,
  //         foursquare_type: foursquare_type,
  //         google_place_id: google_place_id,
  //         google_place_type: google_place_type,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a contact message
  // Future<Message> replyContact(
  //   String phone_number,
  //   String first_name, {
  //   bool withQuote = false,
  //   String? last_name,
  //   String? vcard,
  //   bool? disable_notification,
  //   bool? allow_sending_without_reply,
  //   ReplyMarkup? reply_markup,
  // }) =>
  //     _instance.replyContact(this, phone_number, first_name,
  //         withQuote: withQuote,
  //         last_name: last_name,
  //         vcard: vcard,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a poll message
  // Future<Message> replyPoll(String question, List<String> options,
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
  //     _instance.replyPoll(this, question, options,
  //         withQuote: withQuote,
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
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a dice message
  // Future<Message> replyDice(
  //         {bool withQuote = false,
  //         String emoji = Dice.DICE,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     _instance.replyDice(this,
  //         withQuote: withQuote,
  //         emoji: emoji,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);

  // /// Short-cut to reply with a sticker
  // Future<Message> replySticker(dynamic sticker,
  //         {bool withQuote = false,
  //         bool? disable_notification,
  //         bool? allow_sending_without_reply,
  //         ReplyMarkup? reply_markup}) =>
  //     _instance.replySticker(this, sticker,
  //         disable_notification: disable_notification,
  //         allow_sending_without_reply: allow_sending_without_reply,
  //         reply_markup: reply_markup);
}
