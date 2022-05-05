part of truecollaboration.telegram_bot.models;

/// This object represents a chat.
///
/// https://core.telegram.org/bots/api#chat
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Chat extends ITelegramModel {
  int id;
  EChatType type;
  String? title;
  String? username;
  String? firstName;
  String? lastName;
  ChatPhoto? photo;
  String? bio;
  bool? hasPrivateForwards;
  String? description;
  String? inviteLink;
  Message? pinnedMessage;
  ChatPermissions? permissions;
  int? slowModeDelay;
  int? messageAutoDeleteTime;
  bool? hasProtectedContent;
  String? stickerSetName;
  bool? canSetStickerSet;
  int? linkedChatId;
  ChatLocation? location;
  Chat({
    required this.id,
    required this.type,
    this.title,
    this.username,
    this.firstName,
    this.lastName,
    this.photo,
    this.bio,
    this.description,
    this.inviteLink,
    this.pinnedMessage,
    this.permissions,
    this.slowModeDelay,
    this.stickerSetName,
    this.canSetStickerSet,
    this.linkedChatId,
    this.location,
  });
  
  factory Chat.fromJson(JsonObjectEx json) => _$ChatFromJson(json);
  JsonObjectEx toJson() => _$ChatToJson(this);
}
