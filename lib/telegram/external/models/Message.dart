part of truecollaboration.telegram_bot.models;

/// This object represents a message.
///
/// https://core.telegram.org/bots/api#message
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Message extends ITelegramModel {
  final int messageId;
  final User? from;
  final Chat? senderChat;
  final int date;
  final Chat chat;
  final User? forwardFrom;
  final Chat? forwardFromChat;
  final int? forwardFromMessageId;
  final String? forwardSignature;
  final String? forwardSenderName;
  final int? forwardDate;
  final bool? isAutomaticForward;
  final Message? replyToMessage;
  final User? viaBot;
  final int? editDate;
  final bool? hasProtectedContent;
  final String? mediaGroupId;
  final String? authorSignature;
  final String? text;
  final List<MessageEntity>? entities;
  final Animation? animation;
  final Audio? audio;
  final Document? document;
  final List<PhotoSize>? photo;
  final Sticker? sticker;
  final Video? video;
  final VideoNote? videoNote;
  final Voice? voice;
  final String? caption;
  final List<MessageEntity>? captionEntities;
  final Contact? contact;
  final Dice? dice;
  final Game? game;
  final Poll? poll;
  final Venue? venue;
  final Location? location;
  final List<User>? newChatMembers;
  final User? leftChatMember;
  final String? newChatTitle;
  final List<PhotoSize>? newChatPhoto;
  final bool? deleteChatPhoto;
  final bool? groupChatCreated;
  final bool? supergroupChatCreated;
  final bool? channelChatCreated;
  final MessageAutoDeleteTimerChanged? messageAutoDeleteTimerChanged;
  final int? migrateToChatId;
  final int? migrateFromChatId;
  final Message? pinnedMessage;
  final Invoice? invoice;
  final SuccessfulPayment? successfulPayment;
  final String? connectedWebsite;
  final PassportData? passportData;
  final ProximityAlertTriggered? proximityAlertTriggered;
  final VoiceChatScheduled? voiceChatScheduled;
  final VoiceChatStarted? voiceChatStarted;
  final VoiceChatEnded? voiceChatEnded;
  final VoiceChatParticipantsInvited? voiceChatParticipantsInvited;
  final InlineKeyboardMarkup? replyMarkup;

  Message({
    required this.messageId,
    this.from,
    this.senderChat,
    required this.date,
    required this.chat,
    this.forwardFrom,
    this.forwardFromChat,
    this.forwardFromMessageId,
    this.forwardSignature,
    this.forwardSenderName,
    this.isAutomaticForward,
    this.forwardDate,
    this.replyToMessage,
    this.viaBot,
    this.editDate,
    this.hasProtectedContent,
    this.mediaGroupId,
    this.authorSignature,
    this.text,
    this.entities,
    this.animation,
    this.audio,
    this.document,
    this.photo,
    this.sticker,
    this.video,
    this.videoNote,
    this.voice,
    this.caption,
    this.captionEntities,
    this.contact,
    this.dice,
    this.game,
    this.poll,
    this.venue,
    this.location,
    this.newChatMembers,
    this.leftChatMember,
    this.newChatTitle,
    this.newChatPhoto,
    this.deleteChatPhoto,
    this.groupChatCreated,
    this.supergroupChatCreated,
    this.channelChatCreated,
    this.messageAutoDeleteTimerChanged,
    this.migrateToChatId,
    this.migrateFromChatId,
    this.pinnedMessage,
    this.invoice,
    this.successfulPayment,
    this.connectedWebsite,
    this.passportData,
    this.proximityAlertTriggered,
    this.voiceChatScheduled,
    this.voiceChatStarted,
    this.voiceChatEnded,
    this.voiceChatParticipantsInvited,
    this.replyMarkup,
  });

  // int indexOfEntity(String? type) {
  //   var etts = entities ?? captionEntities;
  //   if (etts != null) {
  //     for (var ett in etts) {
  //       if (ett.type == type) return etts.indexOf(ett);
  //     }
  //   }
  //   return -1;
  // }

  // MessageEntity? entityOf(String? type) {
  //   var i = indexOfEntity(type);
  //   if (i >= 0) {
  //     return (entities ?? captionEntities)![i];
  //   } else {
  //     return null;
  //   }
  // }

  // String? getEntity(String? type) {
  //   var ett = entityOf(type);
  //   if (ett != null) {
  //     return (text ?? caption)!.substring(ett.offset, ett.offset + ett.length);
  //   } else {
  //     return null;
  //   }
  // }
  
  factory Message.fromJson(JsonObjectEx json) => _$MessageFromJson(json);
  JsonObjectEx toJson() => _$MessageToJson(this);
}
