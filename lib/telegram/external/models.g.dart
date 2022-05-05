// GENERATED CODE - DO NOT MODIFY BY HAND

part of truecollaboration.telegram_bot.models;

// **************************************************************************
// ExtensionGenerator
// **************************************************************************

// ignore_for_file: unused_local_variable, dead_code
BotCommandScope _$BotCommandScopeFromJson(JsonObjectEx json) {
  dynamic value;
  return BotCommandScope(
    type: _$EBotCommandScopeTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
  );
}

JsonObjectEx _$BotCommandScopeToJson(BotCommandScope instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "type",
      _$EBotCommandScopeTypeToJson(
        instance.type,
      ));
  return json;
}

ChatMember _$ChatMemberFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatMember(
    status: _$EChatMemberStatusFromJson(
      json.getString(
        "status",
      )!,
    )!,
    user: _$UserFromJson(
      json.getJsonObject(
        "user",
      )!,
    ),
  );
}

JsonObjectEx _$ChatMemberToJson(ChatMember instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "status",
      _$EChatMemberStatusToJson(
        instance.status,
      ));
  write(
      "user",
      _$UserToJson(
        instance.user,
      ));
  return json;
}

InputMedia _$InputMediaFromJson(JsonObjectEx json) {
  dynamic value;
  return InputMedia(
    type: _$EInputMediaTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    media: json.getString(
      "media",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
  );
}

JsonObjectEx _$InputMediaToJson(InputMedia instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "type",
      _$EInputMediaTypeToJson(
        instance.type,
      ));
  write("media", instance.media);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  return json;
}

InputMessageContent _$InputMessageContentFromJson(JsonObjectEx json) {
  dynamic value;
  return InputMessageContent();
}

JsonObjectEx _$InputMessageContentToJson(InputMessageContent instance) {
  final json = JsonObjectEx.empty();
  return json;
}

PassportElementError _$PassportElementErrorFromJson(JsonObjectEx json) {
  dynamic value;
  return PassportElementError(
    source: json.getString(
      "source",
    )!,
    type: _$EPassportElementErrorTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    message: json.getString(
      "message",
    )!,
  );
}

JsonObjectEx _$PassportElementErrorToJson(PassportElementError instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("source", instance.source);
  write(
      "type",
      _$EPassportElementErrorTypeToJson(
        instance.type,
      ));
  write("message", instance.message);
  return json;
}

ReplyMarkup _$ReplyMarkupFromJson(JsonObjectEx json) {
  dynamic value;
  return ReplyMarkup();
}

JsonObjectEx _$ReplyMarkupToJson(ReplyMarkup instance) {
  final json = JsonObjectEx.empty();
  return json;
}

EBotCommandScopeType? _$EBotCommandScopeTypeFromJson(String value) {
  switch (value) {
    case "default":
      return EBotCommandScopeType.DEFAULT;
    case "all_private_chats":
      return EBotCommandScopeType.ALL_PRIVATE_CHATS;
    case "all_group_chats":
      return EBotCommandScopeType.ALL_GROUP_CHATS;
    case "all_chat_administrators":
      return EBotCommandScopeType.ALL_CHAT_ADMINISTRATORS;
    case "chat":
      return EBotCommandScopeType.CHAT;
    case "chat_administrators":
      return EBotCommandScopeType.CHAT_ADMINISTRATORS;
    case "chat_member":
      return EBotCommandScopeType.CHAT_MEMBER;
  }
  return null;
}

String? _$EBotCommandScopeTypeToJson(EBotCommandScopeType instance) {
  switch (instance) {
    case EBotCommandScopeType.DEFAULT:
      return "default";
    case EBotCommandScopeType.ALL_PRIVATE_CHATS:
      return "all_private_chats";
    case EBotCommandScopeType.ALL_GROUP_CHATS:
      return "all_group_chats";
    case EBotCommandScopeType.ALL_CHAT_ADMINISTRATORS:
      return "all_chat_administrators";
    case EBotCommandScopeType.CHAT:
      return "chat";
    case EBotCommandScopeType.CHAT_ADMINISTRATORS:
      return "chat_administrators";
    case EBotCommandScopeType.CHAT_MEMBER:
      return "chat_member";
  }
  return null;
}

EChatAction? _$EChatActionFromJson(String value) {
  switch (value) {
    case "typing":
      return EChatAction.TYPING;
    case "upload_photo":
      return EChatAction.UPLOAD_PHOTO;
    case "record_video":
      return EChatAction.RECORD_VIDEO;
    case "record_voice":
      return EChatAction.RECORD_VOICE;
    case "upload_voice":
      return EChatAction.UPLOAD_VOICE;
    case "upload_document":
      return EChatAction.UPLOAD_DOCUMENT;
    case "choose_sticker":
      return EChatAction.CHOOSE_STICKER;
    case "find_location":
      return EChatAction.FIND_LOCATION;
    case "record_video_note":
      return EChatAction.RECORD_VIDEO_NOTE;
    case "upload_video_note":
      return EChatAction.UPLOAD_VIDEO_NOTE;
  }
  return null;
}

String? _$EChatActionToJson(EChatAction instance) {
  switch (instance) {
    case EChatAction.TYPING:
      return "typing";
    case EChatAction.UPLOAD_PHOTO:
      return "upload_photo";
    case EChatAction.RECORD_VIDEO:
      return "record_video";
    case EChatAction.RECORD_VOICE:
      return "record_voice";
    case EChatAction.UPLOAD_VOICE:
      return "upload_voice";
    case EChatAction.UPLOAD_DOCUMENT:
      return "upload_document";
    case EChatAction.CHOOSE_STICKER:
      return "choose_sticker";
    case EChatAction.FIND_LOCATION:
      return "find_location";
    case EChatAction.RECORD_VIDEO_NOTE:
      return "record_video_note";
    case EChatAction.UPLOAD_VIDEO_NOTE:
      return "upload_video_note";
  }
  return null;
}

EChatMemberStatus? _$EChatMemberStatusFromJson(String value) {
  switch (value) {
    case "creator":
      return EChatMemberStatus.CREATOR;
    case "administrator":
      return EChatMemberStatus.ADMINISTRATOR;
    case "member":
      return EChatMemberStatus.MEMBER;
    case "restricted":
      return EChatMemberStatus.RESTRICTED;
    case "left":
      return EChatMemberStatus.LEFT;
    case "kicked":
      return EChatMemberStatus.KICKED;
  }
  return null;
}

String? _$EChatMemberStatusToJson(EChatMemberStatus instance) {
  switch (instance) {
    case EChatMemberStatus.CREATOR:
      return "creator";
    case EChatMemberStatus.ADMINISTRATOR:
      return "administrator";
    case EChatMemberStatus.MEMBER:
      return "member";
    case EChatMemberStatus.RESTRICTED:
      return "restricted";
    case EChatMemberStatus.LEFT:
      return "left";
    case EChatMemberStatus.KICKED:
      return "kicked";
  }
  return null;
}

EChatType? _$EChatTypeFromJson(String value) {
  switch (value) {
    case "private":
      return EChatType.PRIVATE;
    case "group":
      return EChatType.GROUP;
    case "supergroup":
      return EChatType.SUPERGROUP;
    case "channel":
      return EChatType.CHANNEL;
  }
  return null;
}

String? _$EChatTypeToJson(EChatType instance) {
  switch (instance) {
    case EChatType.PRIVATE:
      return "private";
    case EChatType.GROUP:
      return "group";
    case EChatType.SUPERGROUP:
      return "supergroup";
    case EChatType.CHANNEL:
      return "channel";
  }
  return null;
}

EInlineQueryResultType? _$EInlineQueryResultTypeFromJson(String value) {
  switch (value) {
    case "article":
      return EInlineQueryResultType.ARTICLE;
    case "audio":
      return EInlineQueryResultType.AUDIO;
    case "document":
      return EInlineQueryResultType.DOCUMENT;
    case "gif":
      return EInlineQueryResultType.GIF;
    case "mpeg4gif":
      return EInlineQueryResultType.MPEG4GIF;
    case "photo":
      return EInlineQueryResultType.PHOTO;
    case "sticker":
      return EInlineQueryResultType.STICKER;
    case "video":
      return EInlineQueryResultType.VIDEO;
    case "voice":
      return EInlineQueryResultType.VOICE;
    case "contact":
      return EInlineQueryResultType.CONTACT;
    case "game":
      return EInlineQueryResultType.GAME;
    case "location":
      return EInlineQueryResultType.LOCATION;
    case "venue":
      return EInlineQueryResultType.VENUE;
  }
  return null;
}

String? _$EInlineQueryResultTypeToJson(EInlineQueryResultType instance) {
  switch (instance) {
    case EInlineQueryResultType.ARTICLE:
      return "article";
    case EInlineQueryResultType.AUDIO:
      return "audio";
    case EInlineQueryResultType.DOCUMENT:
      return "document";
    case EInlineQueryResultType.GIF:
      return "gif";
    case EInlineQueryResultType.MPEG4GIF:
      return "mpeg4gif";
    case EInlineQueryResultType.PHOTO:
      return "photo";
    case EInlineQueryResultType.STICKER:
      return "sticker";
    case EInlineQueryResultType.VIDEO:
      return "video";
    case EInlineQueryResultType.VOICE:
      return "voice";
    case EInlineQueryResultType.CONTACT:
      return "contact";
    case EInlineQueryResultType.GAME:
      return "game";
    case EInlineQueryResultType.LOCATION:
      return "location";
    case EInlineQueryResultType.VENUE:
      return "venue";
  }
  return null;
}

EInputMediaType? _$EInputMediaTypeFromJson(String value) {
  switch (value) {
    case "animation":
      return EInputMediaType.ANIMATION;
    case "audio":
      return EInputMediaType.AUDIO;
    case "document":
      return EInputMediaType.DOCUMENT;
    case "photo":
      return EInputMediaType.PHOTO;
    case "video":
      return EInputMediaType.VIDEO;
  }
  return null;
}

String? _$EInputMediaTypeToJson(EInputMediaType instance) {
  switch (instance) {
    case EInputMediaType.ANIMATION:
      return "animation";
    case EInputMediaType.AUDIO:
      return "audio";
    case EInputMediaType.DOCUMENT:
      return "document";
    case EInputMediaType.PHOTO:
      return "photo";
    case EInputMediaType.VIDEO:
      return "video";
  }
  return null;
}

EPassportElementErrorType? _$EPassportElementErrorTypeFromJson(String value) {
  switch (value) {
    case "personal_details":
      return EPassportElementErrorType.PERSONAL_DETAILS;
    case "passport":
      return EPassportElementErrorType.PASSPORT;
    case "driver_license":
      return EPassportElementErrorType.DRIVER_LICENSE;
    case "identity_card":
      return EPassportElementErrorType.IDENTITY_CARD;
    case "internal_passport":
      return EPassportElementErrorType.INTERNAL_PASSPORT;
    case "address":
      return EPassportElementErrorType.ADDRESS;
  }
  return null;
}

String? _$EPassportElementErrorTypeToJson(EPassportElementErrorType instance) {
  switch (instance) {
    case EPassportElementErrorType.PERSONAL_DETAILS:
      return "personal_details";
    case EPassportElementErrorType.PASSPORT:
      return "passport";
    case EPassportElementErrorType.DRIVER_LICENSE:
      return "driver_license";
    case EPassportElementErrorType.IDENTITY_CARD:
      return "identity_card";
    case EPassportElementErrorType.INTERNAL_PASSPORT:
      return "internal_passport";
    case EPassportElementErrorType.ADDRESS:
      return "address";
  }
  return null;
}

Animation _$AnimationFromJson(JsonObjectEx json) {
  dynamic value;
  return Animation(
    fileId: json.getString(
      "file_id",
    )!,
    fileUniqueId: json.getString(
      "file_unique_id",
    )!,
    width: json.getInteger(
      "width",
    )!,
    height: json.getInteger(
      "height",
    )!,
    duration: json.getInteger(
      "duration",
    )!,
    thumb: (value = json.getJsonObject(
              "thumb",
            )) ==
            null
        ? null
        : _$PhotoSizeFromJson(
            json.getJsonObject(
              "thumb",
            )!,
          ),
    fileName: (value = json.getString(
              "file_name",
            )) ==
            null
        ? null
        : json.getString(
            "file_name",
          )!,
    mimeType: (value = json.getString(
              "mime_type",
            )) ==
            null
        ? null
        : json.getString(
            "mime_type",
          )!,
    fileSize: (value = json.getInteger(
              "file_size",
            )) ==
            null
        ? null
        : json.getInteger(
            "file_size",
          )!,
  );
}

JsonObjectEx _$AnimationToJson(Animation instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("file_id", instance.fileId);
  write("file_unique_id", instance.fileUniqueId);
  write("width", instance.width);
  write("height", instance.height);
  write("duration", instance.duration);
  write(
      "thumb",
      instance.thumb == null
          ? null
          : _$PhotoSizeToJson(
              instance.thumb!,
            ));
  write("file_name", instance.fileName == null ? null : instance.fileName!);
  write("mime_type", instance.mimeType == null ? null : instance.mimeType!);
  write("file_size", instance.fileSize == null ? null : instance.fileSize!);
  return json;
}

Audio _$AudioFromJson(JsonObjectEx json) {
  dynamic value;
  return Audio(
    fileId: json.getString(
      "file_id",
    )!,
    fileUniqueId: json.getString(
      "file_unique_id",
    )!,
    duration: json.getInteger(
      "duration",
    )!,
    performer: (value = json.getString(
              "performer",
            )) ==
            null
        ? null
        : json.getString(
            "performer",
          )!,
    title: (value = json.getString(
              "title",
            )) ==
            null
        ? null
        : json.getString(
            "title",
          )!,
    fileName: (value = json.getString(
              "file_name",
            )) ==
            null
        ? null
        : json.getString(
            "file_name",
          )!,
    mimeType: (value = json.getString(
              "mime_type",
            )) ==
            null
        ? null
        : json.getString(
            "mime_type",
          )!,
    fileSize: (value = json.getInteger(
              "file_size",
            )) ==
            null
        ? null
        : json.getInteger(
            "file_size",
          )!,
    thumb: (value = json.getJsonObject(
              "thumb",
            )) ==
            null
        ? null
        : _$PhotoSizeFromJson(
            json.getJsonObject(
              "thumb",
            )!,
          ),
  );
}

JsonObjectEx _$AudioToJson(Audio instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("file_id", instance.fileId);
  write("file_unique_id", instance.fileUniqueId);
  write("duration", instance.duration);
  write("performer", instance.performer == null ? null : instance.performer!);
  write("title", instance.title == null ? null : instance.title!);
  write("file_name", instance.fileName == null ? null : instance.fileName!);
  write("mime_type", instance.mimeType == null ? null : instance.mimeType!);
  write("file_size", instance.fileSize == null ? null : instance.fileSize!);
  write(
      "thumb",
      instance.thumb == null
          ? null
          : _$PhotoSizeToJson(
              instance.thumb!,
            ));
  return json;
}

BotCommand _$BotCommandFromJson(JsonObjectEx json) {
  dynamic value;
  return BotCommand(
    command: json.getString(
      "command",
    )!,
    description: json.getString(
      "description",
    )!,
  );
}

JsonObjectEx _$BotCommandToJson(BotCommand instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("command", instance.command);
  write("description", instance.description);
  return json;
}

BotCommandScopeAllChatsAdministratorsModel
    _$BotCommandScopeAllChatsAdministratorsModelFromJson(JsonObjectEx json) {
  dynamic value;
  return BotCommandScopeAllChatsAdministratorsModel();
}

JsonObjectEx _$BotCommandScopeAllChatsAdministratorsModelToJson(
    BotCommandScopeAllChatsAdministratorsModel instance) {
  final json = JsonObjectEx.empty();
  return json;
}

BotCommandScopeAllGroupChatsModel _$BotCommandScopeAllGroupChatsModelFromJson(
    JsonObjectEx json) {
  dynamic value;
  return BotCommandScopeAllGroupChatsModel();
}

JsonObjectEx _$BotCommandScopeAllGroupChatsModelToJson(
    BotCommandScopeAllGroupChatsModel instance) {
  final json = JsonObjectEx.empty();
  return json;
}

BotCommandScopeAllPrivateChats _$BotCommandScopeAllPrivateChatsFromJson(
    JsonObjectEx json) {
  dynamic value;
  return BotCommandScopeAllPrivateChats();
}

JsonObjectEx _$BotCommandScopeAllPrivateChatsToJson(
    BotCommandScopeAllPrivateChats instance) {
  final json = JsonObjectEx.empty();
  return json;
}

BotCommandScopeChat _$BotCommandScopeChatFromJson(JsonObjectEx json) {
  dynamic value;
  return BotCommandScopeChat(
    chatId: json.getDynamic(
      "chat_id",
    ),
  );
}

JsonObjectEx _$BotCommandScopeChatToJson(BotCommandScopeChat instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("chat_id", instance.chatId!);
  return json;
}

BotCommandScopeChatAdministrators _$BotCommandScopeChatAdministratorsFromJson(
    JsonObjectEx json) {
  dynamic value;
  return BotCommandScopeChatAdministrators(
    chatId: json.getDynamic(
      "chat_id",
    ),
  );
}

JsonObjectEx _$BotCommandScopeChatAdministratorsToJson(
    BotCommandScopeChatAdministrators instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("chat_id", instance.chatId!);
  return json;
}

BotCommandScopeChatMember _$BotCommandScopeChatMemberFromJson(
    JsonObjectEx json) {
  dynamic value;
  return BotCommandScopeChatMember(
    chatId: json.getDynamic(
      "chat_id",
    ),
  );
}

JsonObjectEx _$BotCommandScopeChatMemberToJson(
    BotCommandScopeChatMember instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("chat_id", instance.chatId!);
  return json;
}

BotCommandScopeDefault _$BotCommandScopeDefaultFromJson(JsonObjectEx json) {
  dynamic value;
  return BotCommandScopeDefault();
}

JsonObjectEx _$BotCommandScopeDefaultToJson(BotCommandScopeDefault instance) {
  final json = JsonObjectEx.empty();
  return json;
}

CallbackGame _$CallbackGameFromJson(JsonObjectEx json) {
  dynamic value;
  return CallbackGame();
}

JsonObjectEx _$CallbackGameToJson(CallbackGame instance) {
  final json = JsonObjectEx.empty();
  return json;
}

CallbackQuery _$CallbackQueryFromJson(JsonObjectEx json) {
  dynamic value;
  return CallbackQuery(
    id: json.getString(
      "id",
    )!,
    from: _$UserFromJson(
      json.getJsonObject(
        "from",
      )!,
    ),
    message: (value = json.getJsonObject(
              "message",
            )) ==
            null
        ? null
        : _$MessageFromJson(
            json.getJsonObject(
              "message",
            )!,
          ),
    inlineMessageId: (value = json.getString(
              "inline_message_id",
            )) ==
            null
        ? null
        : json.getString(
            "inline_message_id",
          )!,
    chatInstance: (value = json.getString(
              "chat_instance",
            )) ==
            null
        ? null
        : json.getString(
            "chat_instance",
          )!,
    data: (value = json.getString(
              "data",
            )) ==
            null
        ? null
        : json.getString(
            "data",
          )!,
    gameShortName: (value = json.getString(
              "game_short_name",
            )) ==
            null
        ? null
        : json.getString(
            "game_short_name",
          )!,
  );
}

JsonObjectEx _$CallbackQueryToJson(CallbackQuery instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "from",
      _$UserToJson(
        instance.from,
      ));
  write(
      "message",
      instance.message == null
          ? null
          : _$MessageToJson(
              instance.message!,
            ));
  write("inline_message_id",
      instance.inlineMessageId == null ? null : instance.inlineMessageId!);
  write("chat_instance",
      instance.chatInstance == null ? null : instance.chatInstance!);
  write("data", instance.data == null ? null : instance.data!);
  write("game_short_name",
      instance.gameShortName == null ? null : instance.gameShortName!);
  return json;
}

Chat _$ChatFromJson(JsonObjectEx json) {
  dynamic value;
  return Chat(
    id: json.getInteger(
      "id",
    )!,
    type: _$EChatTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    title: (value = json.getString(
              "title",
            )) ==
            null
        ? null
        : json.getString(
            "title",
          )!,
    username: (value = json.getString(
              "username",
            )) ==
            null
        ? null
        : json.getString(
            "username",
          )!,
    firstName: (value = json.getString(
              "first_name",
            )) ==
            null
        ? null
        : json.getString(
            "first_name",
          )!,
    lastName: (value = json.getString(
              "last_name",
            )) ==
            null
        ? null
        : json.getString(
            "last_name",
          )!,
    photo: (value = json.getJsonObject(
              "photo",
            )) ==
            null
        ? null
        : _$ChatPhotoFromJson(
            json.getJsonObject(
              "photo",
            )!,
          ),
    bio: (value = json.getString(
              "bio",
            )) ==
            null
        ? null
        : json.getString(
            "bio",
          )!,
    description: (value = json.getString(
              "description",
            )) ==
            null
        ? null
        : json.getString(
            "description",
          )!,
    inviteLink: (value = json.getString(
              "invite_link",
            )) ==
            null
        ? null
        : json.getString(
            "invite_link",
          )!,
    pinnedMessage: (value = json.getJsonObject(
              "pinned_message",
            )) ==
            null
        ? null
        : _$MessageFromJson(
            json.getJsonObject(
              "pinned_message",
            )!,
          ),
    permissions: (value = json.getJsonObject(
              "permissions",
            )) ==
            null
        ? null
        : _$ChatPermissionsFromJson(
            json.getJsonObject(
              "permissions",
            )!,
          ),
    slowModeDelay: (value = json.getInteger(
              "slow_mode_delay",
            )) ==
            null
        ? null
        : json.getInteger(
            "slow_mode_delay",
          )!,
    stickerSetName: (value = json.getString(
              "sticker_set_name",
            )) ==
            null
        ? null
        : json.getString(
            "sticker_set_name",
          )!,
    canSetStickerSet: (value = json.getBoolean(
              "can_set_sticker_set",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_set_sticker_set",
          )!,
    linkedChatId: (value = json.getInteger(
              "linked_chat_id",
            )) ==
            null
        ? null
        : json.getInteger(
            "linked_chat_id",
          )!,
    location: (value = json.getJsonObject(
              "location",
            )) ==
            null
        ? null
        : _$ChatLocationFromJson(
            json.getJsonObject(
              "location",
            )!,
          ),
  );
}

JsonObjectEx _$ChatToJson(Chat instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "type",
      _$EChatTypeToJson(
        instance.type,
      ));
  write("title", instance.title == null ? null : instance.title!);
  write("username", instance.username == null ? null : instance.username!);
  write("first_name", instance.firstName == null ? null : instance.firstName!);
  write("last_name", instance.lastName == null ? null : instance.lastName!);
  write(
      "photo",
      instance.photo == null
          ? null
          : _$ChatPhotoToJson(
              instance.photo!,
            ));
  write("bio", instance.bio == null ? null : instance.bio!);
  write("description",
      instance.description == null ? null : instance.description!);
  write(
      "invite_link", instance.inviteLink == null ? null : instance.inviteLink!);
  write(
      "pinned_message",
      instance.pinnedMessage == null
          ? null
          : _$MessageToJson(
              instance.pinnedMessage!,
            ));
  write(
      "permissions",
      instance.permissions == null
          ? null
          : _$ChatPermissionsToJson(
              instance.permissions!,
            ));
  write("slow_mode_delay",
      instance.slowModeDelay == null ? null : instance.slowModeDelay!);
  write("sticker_set_name",
      instance.stickerSetName == null ? null : instance.stickerSetName!);
  write("can_set_sticker_set",
      instance.canSetStickerSet == null ? null : instance.canSetStickerSet!);
  write("linked_chat_id",
      instance.linkedChatId == null ? null : instance.linkedChatId!);
  write(
      "location",
      instance.location == null
          ? null
          : _$ChatLocationToJson(
              instance.location!,
            ));
  return json;
}

ChatInviteLink _$ChatInviteLinkFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatInviteLink(
    inviteLink: json.getString(
      "invite_link",
    )!,
    creator: _$UserFromJson(
      json.getJsonObject(
        "creator",
      )!,
    ),
    createsJoinRequest: json.getBoolean(
      "creates_join_request",
    )!,
    isPrimary: json.getBoolean(
      "is_primary",
    )!,
    isRevoked: json.getBoolean(
      "is_revoked",
    )!,
    name: (value = json.getString(
              "name",
            )) ==
            null
        ? null
        : json.getString(
            "name",
          )!,
    expireDate: (value = json.getInteger(
              "expire_date",
            )) ==
            null
        ? null
        : json.getInteger(
            "expire_date",
          )!,
    memberLimit: (value = json.getInteger(
              "member_limit",
            )) ==
            null
        ? null
        : json.getInteger(
            "member_limit",
          )!,
    pendingJoinRequestCount: (value = json.getInteger(
              "pending_join_request_count",
            )) ==
            null
        ? null
        : json.getInteger(
            "pending_join_request_count",
          )!,
  );
}

JsonObjectEx _$ChatInviteLinkToJson(ChatInviteLink instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("invite_link", instance.inviteLink);
  write(
      "creator",
      _$UserToJson(
        instance.creator,
      ));
  write("creates_join_request", instance.createsJoinRequest);
  write("is_primary", instance.isPrimary);
  write("is_revoked", instance.isRevoked);
  write("name", instance.name == null ? null : instance.name!);
  write(
      "expire_date", instance.expireDate == null ? null : instance.expireDate!);
  write("member_limit",
      instance.memberLimit == null ? null : instance.memberLimit!);
  write(
      "pending_join_request_count",
      instance.pendingJoinRequestCount == null
          ? null
          : instance.pendingJoinRequestCount!);
  return json;
}

ChatLocation _$ChatLocationFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatLocation(
    location: _$LocationFromJson(
      json.getJsonObject(
        "location",
      )!,
    ),
    address: json.getString(
      "address",
    )!,
  );
}

JsonObjectEx _$ChatLocationToJson(ChatLocation instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "location",
      _$LocationToJson(
        instance.location,
      ));
  write("address", instance.address);
  return json;
}

ChatMemberAdministrator _$ChatMemberAdministratorFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatMemberAdministrator(
    status: _$EChatMemberStatusFromJson(
      json.getString(
        "status",
      )!,
    )!,
    user: _$UserFromJson(
      json.getJsonObject(
        "user",
      )!,
    ),
    canBeEdited: json.getBoolean(
      "can_be_edited",
    )!,
    isAnonymous: json.getBoolean(
      "is_anonymous",
    )!,
    canManageChat: json.getBoolean(
      "can_manage_chat",
    )!,
    canDeleteMessages: json.getBoolean(
      "can_delete_messages",
    )!,
    canManageVoiceChats: json.getBoolean(
      "can_manage_voice_chats",
    )!,
    canRestrictMembers: json.getBoolean(
      "can_restrict_members",
    )!,
    canPromoteMembers: json.getBoolean(
      "can_promote_members",
    )!,
    canChangeInfo: json.getBoolean(
      "can_change_info",
    )!,
    canInviteUsers: json.getBoolean(
      "can_invite_users",
    )!,
    canPostMessages: (value = json.getBoolean(
              "can_post_messages",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_post_messages",
          )!,
    canEditMessages: (value = json.getBoolean(
              "can_edit_messages",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_edit_messages",
          )!,
    canPinMessages: (value = json.getBoolean(
              "can_pin_messages",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_pin_messages",
          )!,
    customTitle: (value = json.getString(
              "custom_title",
            )) ==
            null
        ? null
        : json.getString(
            "custom_title",
          )!,
  );
}

JsonObjectEx _$ChatMemberAdministratorToJson(ChatMemberAdministrator instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "status",
      _$EChatMemberStatusToJson(
        instance.status,
      ));
  write(
      "user",
      _$UserToJson(
        instance.user,
      ));
  write("can_be_edited", instance.canBeEdited);
  write("is_anonymous", instance.isAnonymous);
  write("can_manage_chat", instance.canManageChat);
  write("can_delete_messages", instance.canDeleteMessages);
  write("can_manage_voice_chats", instance.canManageVoiceChats);
  write("can_restrict_members", instance.canRestrictMembers);
  write("can_promote_members", instance.canPromoteMembers);
  write("can_change_info", instance.canChangeInfo);
  write("can_invite_users", instance.canInviteUsers);
  write("can_post_messages",
      instance.canPostMessages == null ? null : instance.canPostMessages!);
  write("can_edit_messages",
      instance.canEditMessages == null ? null : instance.canEditMessages!);
  write("can_pin_messages",
      instance.canPinMessages == null ? null : instance.canPinMessages!);
  write("custom_title",
      instance.customTitle == null ? null : instance.customTitle!);
  return json;
}

ChatMemberBanned _$ChatMemberBannedFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatMemberBanned(
    status: _$EChatMemberStatusFromJson(
      json.getString(
        "status",
      )!,
    )!,
    user: _$UserFromJson(
      json.getJsonObject(
        "user",
      )!,
    ),
    untilDate: json.getInteger(
      "until_date",
    )!,
  );
}

JsonObjectEx _$ChatMemberBannedToJson(ChatMemberBanned instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "status",
      _$EChatMemberStatusToJson(
        instance.status,
      ));
  write(
      "user",
      _$UserToJson(
        instance.user,
      ));
  write("until_date", instance.untilDate);
  return json;
}

ChatMemberLeft _$ChatMemberLeftFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatMemberLeft(
    status: _$EChatMemberStatusFromJson(
      json.getString(
        "status",
      )!,
    )!,
    user: _$UserFromJson(
      json.getJsonObject(
        "user",
      )!,
    ),
  );
}

JsonObjectEx _$ChatMemberLeftToJson(ChatMemberLeft instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "status",
      _$EChatMemberStatusToJson(
        instance.status,
      ));
  write(
      "user",
      _$UserToJson(
        instance.user,
      ));
  return json;
}

ChatMemberMember _$ChatMemberMemberFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatMemberMember(
    status: _$EChatMemberStatusFromJson(
      json.getString(
        "status",
      )!,
    )!,
    user: _$UserFromJson(
      json.getJsonObject(
        "user",
      )!,
    ),
  );
}

JsonObjectEx _$ChatMemberMemberToJson(ChatMemberMember instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "status",
      _$EChatMemberStatusToJson(
        instance.status,
      ));
  write(
      "user",
      _$UserToJson(
        instance.user,
      ));
  return json;
}

ChatMemberOwner _$ChatMemberOwnerFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatMemberOwner(
    status: _$EChatMemberStatusFromJson(
      json.getString(
        "status",
      )!,
    )!,
    user: _$UserFromJson(
      json.getJsonObject(
        "user",
      )!,
    ),
    isAnonymous: json.getBoolean(
      "is_anonymous",
    )!,
    customTitle: (value = json.getString(
              "custom_title",
            )) ==
            null
        ? null
        : json.getString(
            "custom_title",
          )!,
  );
}

JsonObjectEx _$ChatMemberOwnerToJson(ChatMemberOwner instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "status",
      _$EChatMemberStatusToJson(
        instance.status,
      ));
  write(
      "user",
      _$UserToJson(
        instance.user,
      ));
  write("is_anonymous", instance.isAnonymous);
  write("custom_title",
      instance.customTitle == null ? null : instance.customTitle!);
  return json;
}

ChatMemberRestricted _$ChatMemberRestrictedFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatMemberRestricted(
    status: _$EChatMemberStatusFromJson(
      json.getString(
        "status",
      )!,
    )!,
    user: _$UserFromJson(
      json.getJsonObject(
        "user",
      )!,
    ),
    isMember: json.getBoolean(
      "is_member",
    )!,
    canChangeInfo: json.getBoolean(
      "can_change_info",
    )!,
    canInviteUsers: json.getBoolean(
      "can_invite_users",
    )!,
    canPinMessages: json.getBoolean(
      "can_pin_messages",
    )!,
    canSendMessages: json.getBoolean(
      "can_send_messages",
    )!,
    canSendMediaMessages: json.getBoolean(
      "can_send_media_messages",
    )!,
    canSendPolls: json.getBoolean(
      "can_send_polls",
    )!,
    canSendOtherMessages: json.getBoolean(
      "can_send_other_messages",
    )!,
    canAddWebPagePreviews: json.getBoolean(
      "can_add_web_page_previews",
    )!,
    untilDate: json.getInteger(
      "until_date",
    )!,
  );
}

JsonObjectEx _$ChatMemberRestrictedToJson(ChatMemberRestricted instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "status",
      _$EChatMemberStatusToJson(
        instance.status,
      ));
  write(
      "user",
      _$UserToJson(
        instance.user,
      ));
  write("is_member", instance.isMember);
  write("can_change_info", instance.canChangeInfo);
  write("can_invite_users", instance.canInviteUsers);
  write("can_pin_messages", instance.canPinMessages);
  write("can_send_messages", instance.canSendMessages);
  write("can_send_media_messages", instance.canSendMediaMessages);
  write("can_send_polls", instance.canSendPolls);
  write("can_send_other_messages", instance.canSendOtherMessages);
  write("can_add_web_page_previews", instance.canAddWebPagePreviews);
  write("until_date", instance.untilDate);
  return json;
}

ChatMemberUpdated _$ChatMemberUpdatedFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatMemberUpdated(
    chat: (value = json.getJsonObject(
              "chat",
            )) ==
            null
        ? null
        : _$ChatFromJson(
            json.getJsonObject(
              "chat",
            )!,
          ),
    from: (value = json.getJsonObject(
              "from",
            )) ==
            null
        ? null
        : _$UserFromJson(
            json.getJsonObject(
              "from",
            )!,
          ),
    oldChatMember: (value = json.getJsonObject(
              "old_chat_member",
            )) ==
            null
        ? null
        : _$ChatMemberFromJson(
            json.getJsonObject(
              "old_chat_member",
            )!,
          ),
    newChatMember: (value = json.getJsonObject(
              "new_chat_member",
            )) ==
            null
        ? null
        : _$ChatMemberFromJson(
            json.getJsonObject(
              "new_chat_member",
            )!,
          ),
    inviteLink: (value = json.getJsonObject(
              "invite_link",
            )) ==
            null
        ? null
        : _$ChatInviteLinkFromJson(
            json.getJsonObject(
              "invite_link",
            )!,
          ),
  );
}

JsonObjectEx _$ChatMemberUpdatedToJson(ChatMemberUpdated instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "chat",
      instance.chat == null
          ? null
          : _$ChatToJson(
              instance.chat!,
            ));
  write(
      "from",
      instance.from == null
          ? null
          : _$UserToJson(
              instance.from!,
            ));
  write(
      "old_chat_member",
      instance.oldChatMember == null
          ? null
          : _$ChatMemberToJson(
              instance.oldChatMember!,
            ));
  write(
      "new_chat_member",
      instance.newChatMember == null
          ? null
          : _$ChatMemberToJson(
              instance.newChatMember!,
            ));
  write(
      "invite_link",
      instance.inviteLink == null
          ? null
          : _$ChatInviteLinkToJson(
              instance.inviteLink!,
            ));
  return json;
}

ChatPermissions _$ChatPermissionsFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatPermissions(
    canSendMessages: (value = json.getBoolean(
              "can_send_messages",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_send_messages",
          )!,
    canSendMediaMessages: (value = json.getBoolean(
              "can_send_media_messages",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_send_media_messages",
          )!,
    canSendPolls: (value = json.getBoolean(
              "can_send_polls",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_send_polls",
          )!,
    canSendOtherMessages: (value = json.getBoolean(
              "can_send_other_messages",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_send_other_messages",
          )!,
    canAddWebPagePreviews: (value = json.getBoolean(
              "can_add_web_page_previews",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_add_web_page_previews",
          )!,
    canChangeInfo: (value = json.getBoolean(
              "can_change_info",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_change_info",
          )!,
    canInviteUsers: (value = json.getBoolean(
              "can_invite_users",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_invite_users",
          )!,
    canPinMessages: (value = json.getBoolean(
              "can_pin_messages",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_pin_messages",
          )!,
  );
}

JsonObjectEx _$ChatPermissionsToJson(ChatPermissions instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("can_send_messages",
      instance.canSendMessages == null ? null : instance.canSendMessages!);
  write(
      "can_send_media_messages",
      instance.canSendMediaMessages == null
          ? null
          : instance.canSendMediaMessages!);
  write("can_send_polls",
      instance.canSendPolls == null ? null : instance.canSendPolls!);
  write(
      "can_send_other_messages",
      instance.canSendOtherMessages == null
          ? null
          : instance.canSendOtherMessages!);
  write(
      "can_add_web_page_previews",
      instance.canAddWebPagePreviews == null
          ? null
          : instance.canAddWebPagePreviews!);
  write("can_change_info",
      instance.canChangeInfo == null ? null : instance.canChangeInfo!);
  write("can_invite_users",
      instance.canInviteUsers == null ? null : instance.canInviteUsers!);
  write("can_pin_messages",
      instance.canPinMessages == null ? null : instance.canPinMessages!);
  return json;
}

ChatPhoto _$ChatPhotoFromJson(JsonObjectEx json) {
  dynamic value;
  return ChatPhoto(
    smallFileId: json.getString(
      "small_file_id",
    )!,
    smallFileUniqueId: json.getString(
      "small_file_unique_id",
    )!,
    bigFileId: json.getString(
      "big_file_id",
    )!,
    bigFileUniqueId: json.getString(
      "big_file_unique_id",
    )!,
  );
}

JsonObjectEx _$ChatPhotoToJson(ChatPhoto instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("small_file_id", instance.smallFileId);
  write("small_file_unique_id", instance.smallFileUniqueId);
  write("big_file_id", instance.bigFileId);
  write("big_file_unique_id", instance.bigFileUniqueId);
  return json;
}

ChosenInlineResult _$ChosenInlineResultFromJson(JsonObjectEx json) {
  dynamic value;
  return ChosenInlineResult(
    resultId: json.getString(
      "result_id",
    )!,
    from: _$UserFromJson(
      json.getJsonObject(
        "from",
      )!,
    ),
    location: (value = json.getJsonObject(
              "location",
            )) ==
            null
        ? null
        : _$LocationFromJson(
            json.getJsonObject(
              "location",
            )!,
          ),
    inlineMessageId: (value = json.getString(
              "inline_message_id",
            )) ==
            null
        ? null
        : json.getString(
            "inline_message_id",
          )!,
    query: json.getString(
      "query",
    )!,
  );
}

JsonObjectEx _$ChosenInlineResultToJson(ChosenInlineResult instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("result_id", instance.resultId);
  write(
      "from",
      _$UserToJson(
        instance.from,
      ));
  write(
      "location",
      instance.location == null
          ? null
          : _$LocationToJson(
              instance.location!,
            ));
  write("inline_message_id",
      instance.inlineMessageId == null ? null : instance.inlineMessageId!);
  write("query", instance.query);
  return json;
}

Contact _$ContactFromJson(JsonObjectEx json) {
  dynamic value;
  return Contact(
    phoneNumber: json.getString(
      "phone_number",
    )!,
    firstName: json.getString(
      "first_name",
    )!,
    lastName: (value = json.getString(
              "last_name",
            )) ==
            null
        ? null
        : json.getString(
            "last_name",
          )!,
    userId: (value = json.getInteger(
              "user_id",
            )) ==
            null
        ? null
        : json.getInteger(
            "user_id",
          )!,
    vcard: (value = json.getString(
              "vcard",
            )) ==
            null
        ? null
        : json.getString(
            "vcard",
          )!,
  );
}

JsonObjectEx _$ContactToJson(Contact instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("phone_number", instance.phoneNumber);
  write("first_name", instance.firstName);
  write("last_name", instance.lastName == null ? null : instance.lastName!);
  write("user_id", instance.userId == null ? null : instance.userId!);
  write("vcard", instance.vcard == null ? null : instance.vcard!);
  return json;
}

Dice _$DiceFromJson(JsonObjectEx json) {
  dynamic value;
  return Dice(
    value: json.getInteger(
      "value",
    )!,
    emoji: json.getString(
      "emoji",
    )!,
  );
}

JsonObjectEx _$DiceToJson(Dice instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("value", instance.value);
  write("emoji", instance.emoji);
  return json;
}

Document _$DocumentFromJson(JsonObjectEx json) {
  dynamic value;
  return Document(
    fileId: json.getString(
      "file_id",
    )!,
    fileUniqueId: json.getString(
      "file_unique_id",
    )!,
    thumb: (value = json.getJsonObject(
              "thumb",
            )) ==
            null
        ? null
        : _$PhotoSizeFromJson(
            json.getJsonObject(
              "thumb",
            )!,
          ),
    fileName: (value = json.getString(
              "file_name",
            )) ==
            null
        ? null
        : json.getString(
            "file_name",
          )!,
    mimeType: (value = json.getString(
              "mime_type",
            )) ==
            null
        ? null
        : json.getString(
            "mime_type",
          )!,
    fileSize: (value = json.getInteger(
              "file_size",
            )) ==
            null
        ? null
        : json.getInteger(
            "file_size",
          )!,
  );
}

JsonObjectEx _$DocumentToJson(Document instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("file_id", instance.fileId);
  write("file_unique_id", instance.fileUniqueId);
  write(
      "thumb",
      instance.thumb == null
          ? null
          : _$PhotoSizeToJson(
              instance.thumb!,
            ));
  write("file_name", instance.fileName == null ? null : instance.fileName!);
  write("mime_type", instance.mimeType == null ? null : instance.mimeType!);
  write("file_size", instance.fileSize == null ? null : instance.fileSize!);
  return json;
}

EncryptedCredentials _$EncryptedCredentialsFromJson(JsonObjectEx json) {
  dynamic value;
  return EncryptedCredentials(
    data: json.getString(
      "data",
    )!,
    hash: json.getString(
      "hash",
    )!,
    secret: json.getString(
      "secret",
    )!,
  );
}

JsonObjectEx _$EncryptedCredentialsToJson(EncryptedCredentials instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("data", instance.data);
  write("hash", instance.hash);
  write("secret", instance.secret);
  return json;
}

EncryptedPassportElement _$EncryptedPassportElementFromJson(JsonObjectEx json) {
  dynamic value;
  return EncryptedPassportElement(
    type: json.getString(
      "type",
    )!,
    data: (value = json.getString(
              "data",
            )) ==
            null
        ? null
        : json.getString(
            "data",
          )!,
    phoneNumber: (value = json.getString(
              "phone_number",
            )) ==
            null
        ? null
        : json.getString(
            "phone_number",
          )!,
    email: (value = json.getString(
              "email",
            )) ==
            null
        ? null
        : json.getString(
            "email",
          )!,
    files: (value = json.getJsonArray(
              "files",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "files",
            )!
            .map(
              (e) => _$PassportFileFromJson(
                e,
              ),
            )
            .toList(),
    frontSide: (value = json.getJsonObject(
              "front_side",
            )) ==
            null
        ? null
        : _$PassportFileFromJson(
            json.getJsonObject(
              "front_side",
            )!,
          ),
    reverseSide: (value = json.getJsonObject(
              "reverse_side",
            )) ==
            null
        ? null
        : _$PassportFileFromJson(
            json.getJsonObject(
              "reverse_side",
            )!,
          ),
    selfie: (value = json.getJsonObject(
              "selfie",
            )) ==
            null
        ? null
        : _$PassportFileFromJson(
            json.getJsonObject(
              "selfie",
            )!,
          ),
    translation: (value = json.getJsonArray(
              "translation",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "translation",
            )!
            .map(
              (e) => _$PassportFileFromJson(
                e,
              ),
            )
            .toList(),
    hash: json.getString(
      "hash",
    )!,
  );
}

JsonObjectEx _$EncryptedPassportElementToJson(
    EncryptedPassportElement instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("type", instance.type);
  write("data", instance.data == null ? null : instance.data!);
  write("phone_number",
      instance.phoneNumber == null ? null : instance.phoneNumber!);
  write("email", instance.email == null ? null : instance.email!);
  write(
      "files",
      instance.files == null
          ? null
          : instance.files!
              .map(
                (e) => _$PassportFileToJson(
                  e,
                ),
              )
              .toList());
  write(
      "front_side",
      instance.frontSide == null
          ? null
          : _$PassportFileToJson(
              instance.frontSide!,
            ));
  write(
      "reverse_side",
      instance.reverseSide == null
          ? null
          : _$PassportFileToJson(
              instance.reverseSide!,
            ));
  write(
      "selfie",
      instance.selfie == null
          ? null
          : _$PassportFileToJson(
              instance.selfie!,
            ));
  write(
      "translation",
      instance.translation == null
          ? null
          : instance.translation!
              .map(
                (e) => _$PassportFileToJson(
                  e,
                ),
              )
              .toList());
  write("hash", instance.hash);
  return json;
}

File _$FileFromJson(JsonObjectEx json) {
  dynamic value;
  return File(
    fileId: json.getString(
      "file_id",
    )!,
    fileUniqueId: json.getString(
      "file_unique_id",
    )!,
    fileSize: (value = json.getInteger(
              "file_size",
            )) ==
            null
        ? null
        : json.getInteger(
            "file_size",
          )!,
    filePath: (value = json.getString(
              "file_path",
            )) ==
            null
        ? null
        : json.getString(
            "file_path",
          )!,
  );
}

JsonObjectEx _$FileToJson(File instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("file_id", instance.fileId);
  write("file_unique_id", instance.fileUniqueId);
  write("file_size", instance.fileSize == null ? null : instance.fileSize!);
  write("file_path", instance.filePath == null ? null : instance.filePath!);
  return json;
}

ForceReply _$ForceReplyFromJson(JsonObjectEx json) {
  dynamic value;
  return ForceReply(
    forceReply: json.getBoolean(
      "force_reply",
    )!,
    inputFieldPlaceholder: (value = json.getString(
              "input_field_placeholder",
            )) ==
            null
        ? null
        : json.getString(
            "input_field_placeholder",
          )!,
    selective: (value = json.getBoolean(
              "selective",
            )) ==
            null
        ? null
        : json.getBoolean(
            "selective",
          )!,
  );
}

JsonObjectEx _$ForceReplyToJson(ForceReply instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("force_reply", instance.forceReply);
  write(
      "input_field_placeholder",
      instance.inputFieldPlaceholder == null
          ? null
          : instance.inputFieldPlaceholder!);
  write("selective", instance.selective == null ? null : instance.selective!);
  return json;
}

Game _$GameFromJson(JsonObjectEx json) {
  dynamic value;
  return Game(
    title: json.getString(
      "title",
    )!,
    description: json.getString(
      "description",
    )!,
    photo: json
        .getJsonArray<JsonObjectEx>(
          "photo",
        )!
        .map(
          (e) => _$PhotoSizeFromJson(
            e,
          ),
        )
        .toList(),
    text: (value = json.getString(
              "text",
            )) ==
            null
        ? null
        : json.getString(
            "text",
          )!,
    textEntities: (value = json.getJsonArray(
              "text_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "text_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    animation: (value = json.getJsonObject(
              "animation",
            )) ==
            null
        ? null
        : _$AnimationFromJson(
            json.getJsonObject(
              "animation",
            )!,
          ),
  );
}

JsonObjectEx _$GameToJson(Game instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("title", instance.title);
  write("description", instance.description);
  write(
      "photo",
      instance.photo.map(
            (e) => _$PhotoSizeToJson(
              e,
            ),
          )
          .toList());
  write("text", instance.text == null ? null : instance.text!);
  write(
      "text_entities",
      instance.textEntities == null
          ? null
          : instance.textEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "animation",
      instance.animation == null
          ? null
          : _$AnimationToJson(
              instance.animation!,
            ));
  return json;
}

GameHighScore _$GameHighScoreFromJson(JsonObjectEx json) {
  dynamic value;
  return GameHighScore(
    position: json.getInteger(
      "position",
    )!,
    user: _$UserFromJson(
      json.getJsonObject(
        "user",
      )!,
    ),
    score: json.getInteger(
      "score",
    )!,
  );
}

JsonObjectEx _$GameHighScoreToJson(GameHighScore instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("position", instance.position);
  write(
      "user",
      _$UserToJson(
        instance.user,
      ));
  write("score", instance.score);
  return json;
}

InlineKeyboardButton _$InlineKeyboardButtonFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineKeyboardButton(
    text: json.getString(
      "text",
    )!,
    url: (value = json.getString(
              "url",
            )) ==
            null
        ? null
        : json.getString(
            "url",
          )!,
    loginUrl: (value = json.getJsonObject(
              "login_url",
            )) ==
            null
        ? null
        : _$LoginUrlFromJson(
            json.getJsonObject(
              "login_url",
            )!,
          ),
    callbackData: (value = json.getString(
              "callback_data",
            )) ==
            null
        ? null
        : json.getString(
            "callback_data",
          )!,
    switchInlineQuery: (value = json.getString(
              "switch_inline_query",
            )) ==
            null
        ? null
        : json.getString(
            "switch_inline_query",
          )!,
    switchInlineQueryCurrentChat: (value = json.getString(
              "switch_inline_query_current_chat",
            )) ==
            null
        ? null
        : json.getString(
            "switch_inline_query_current_chat",
          )!,
    callbackGame: (value = json.getJsonObject(
              "callback_game",
            )) ==
            null
        ? null
        : _$CallbackGameFromJson(
            json.getJsonObject(
              "callback_game",
            )!,
          ),
    pay: (value = json.getBoolean(
              "pay",
            )) ==
            null
        ? null
        : json.getBoolean(
            "pay",
          )!,
  );
}

JsonObjectEx _$InlineKeyboardButtonToJson(InlineKeyboardButton instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("text", instance.text);
  write("url", instance.url == null ? null : instance.url!);
  write(
      "login_url",
      instance.loginUrl == null
          ? null
          : _$LoginUrlToJson(
              instance.loginUrl!,
            ));
  write("callback_data",
      instance.callbackData == null ? null : instance.callbackData!);
  write("switch_inline_query",
      instance.switchInlineQuery == null ? null : instance.switchInlineQuery!);
  write(
      "switch_inline_query_current_chat",
      instance.switchInlineQueryCurrentChat == null
          ? null
          : instance.switchInlineQueryCurrentChat!);
  write(
      "callback_game",
      instance.callbackGame == null
          ? null
          : _$CallbackGameToJson(
              instance.callbackGame!,
            ));
  write("pay", instance.pay == null ? null : instance.pay!);
  return json;
}

InlineKeyboardMarkup _$InlineKeyboardMarkupFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineKeyboardMarkup(
    inlineKeyboard: json.getArray(
      "inline_keyboard",
    )!,
  );
}

JsonObjectEx _$InlineKeyboardMarkupToJson(InlineKeyboardMarkup instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("inline_keyboard", instance.inlineKeyboard);
  return json;
}

InlineQuery _$InlineQueryFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQuery(
    id: json.getString(
      "id",
    )!,
    from: _$UserFromJson(
      json.getJsonObject(
        "from",
      )!,
    ),
    query: json.getString(
      "query",
    )!,
    offset: json.getString(
      "offset",
    )!,
    chatType: (value = json.getString(
              "chat_type",
            )) ==
            null
        ? null
        : json.getString(
            "chat_type",
          )!,
    location: (value = json.getJsonObject(
              "location",
            )) ==
            null
        ? null
        : _$LocationFromJson(
            json.getJsonObject(
              "location",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryToJson(InlineQuery instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "from",
      _$UserToJson(
        instance.from,
      ));
  write("query", instance.query);
  write("offset", instance.offset);
  write("chat_type", instance.chatType == null ? null : instance.chatType!);
  write(
      "location",
      instance.location == null
          ? null
          : _$LocationToJson(
              instance.location!,
            ));
  return json;
}

InlineQueryResult _$InlineQueryResultFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQueryResult(
    type: _$EInlineQueryResultTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultToJson(InlineQueryResult instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "type",
      _$EInlineQueryResultTypeToJson(
        instance.type,
      ));
  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  return json;
}

InlineQueryResultArticle _$InlineQueryResultArticleFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultArticle(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    title: json.getString(
      "title",
    )!,
    inputMessageContent: _$InputMessageContentFromJson(
      json.getJsonObject(
        "input_message_content",
      )!,
    ),
    url: (value = json.getString(
              "url",
            )) ==
            null
        ? null
        : json.getString(
            "url",
          )!,
    hideUrl: (value = json.getBoolean(
              "hide_url",
            )) ==
            null
        ? null
        : json.getBoolean(
            "hide_url",
          )!,
    description: (value = json.getString(
              "description",
            )) ==
            null
        ? null
        : json.getString(
            "description",
          )!,
    thumbUrl: (value = json.getString(
              "thumb_url",
            )) ==
            null
        ? null
        : json.getString(
            "thumb_url",
          )!,
    thumbWidth: (value = json.getString(
              "thumb_width",
            )) ==
            null
        ? null
        : json.getString(
            "thumb_width",
          )!,
    thumbHeight: (value = json.getString(
              "thumb_height",
            )) ==
            null
        ? null
        : json.getString(
            "thumb_height",
          )!,
  );
}

JsonObjectEx _$InlineQueryResultArticleToJson(
    InlineQueryResultArticle instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("title", instance.title);
  write(
      "input_message_content",
      _$InputMessageContentToJson(
        instance.inputMessageContent,
      ));
  write("url", instance.url == null ? null : instance.url!);
  write("hide_url", instance.hideUrl == null ? null : instance.hideUrl!);
  write("description",
      instance.description == null ? null : instance.description!);
  write("thumb_url", instance.thumbUrl == null ? null : instance.thumbUrl!);
  write(
      "thumb_width", instance.thumbWidth == null ? null : instance.thumbWidth!);
  write("thumb_height",
      instance.thumbHeight == null ? null : instance.thumbHeight!);
  return json;
}

InlineQueryResultAudio _$InlineQueryResultAudioFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultAudio(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    audioUrl: json.getString(
      "audio_url",
    )!,
    title: json.getString(
      "title",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    performer: (value = json.getString(
              "performer",
            )) ==
            null
        ? null
        : json.getString(
            "performer",
          )!,
    audioDuration: (value = json.getInteger(
              "audio_duration",
            )) ==
            null
        ? null
        : json.getInteger(
            "audio_duration",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultAudioToJson(InlineQueryResultAudio instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("audio_url", instance.audioUrl);
  write("title", instance.title);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write("performer", instance.performer == null ? null : instance.performer!);
  write("audio_duration",
      instance.audioDuration == null ? null : instance.audioDuration!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultCachedAudio _$InlineQueryResultCachedAudioFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultCachedAudio(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    audioFileId: json.getString(
      "audio_file_id",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultCachedAudioToJson(
    InlineQueryResultCachedAudio instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("audio_file_id", instance.audioFileId);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultCachedDocument _$InlineQueryResultCachedDocumentFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultCachedDocument(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    title: json.getString(
      "title",
    )!,
    documentFileId: json.getString(
      "document_file_id",
    )!,
    description: (value = json.getString(
              "description",
            )) ==
            null
        ? null
        : json.getString(
            "description",
          )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultCachedDocumentToJson(
    InlineQueryResultCachedDocument instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("title", instance.title);
  write("document_file_id", instance.documentFileId);
  write("description",
      instance.description == null ? null : instance.description!);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultCachedGif _$InlineQueryResultCachedGifFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultCachedGif(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    gifFileId: json.getString(
      "gif_file_id",
    )!,
    title: (value = json.getString(
              "title",
            )) ==
            null
        ? null
        : json.getString(
            "title",
          )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultCachedGifToJson(
    InlineQueryResultCachedGif instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("gif_file_id", instance.gifFileId);
  write("title", instance.title == null ? null : instance.title!);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultCachedMpeg4Gif _$InlineQueryResultCachedMpeg4GifFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultCachedMpeg4Gif(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    mpeg4FileId: json.getString(
      "mpeg4_file_id",
    )!,
    title: (value = json.getString(
              "title",
            )) ==
            null
        ? null
        : json.getString(
            "title",
          )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultCachedMpeg4GifToJson(
    InlineQueryResultCachedMpeg4Gif instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("mpeg4_file_id", instance.mpeg4FileId);
  write("title", instance.title == null ? null : instance.title!);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultCachedPhoto _$InlineQueryResultCachedPhotoFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultCachedPhoto(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    photoFileId: json.getString(
      "photo_file_id",
    )!,
    title: (value = json.getString(
              "title",
            )) ==
            null
        ? null
        : json.getString(
            "title",
          )!,
    description: (value = json.getString(
              "description",
            )) ==
            null
        ? null
        : json.getString(
            "description",
          )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultCachedPhotoToJson(
    InlineQueryResultCachedPhoto instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("photo_file_id", instance.photoFileId);
  write("title", instance.title == null ? null : instance.title!);
  write("description",
      instance.description == null ? null : instance.description!);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultCachedSticker _$InlineQueryResultCachedStickerFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultCachedSticker(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    stickerFileId: (value = json.getString(
              "sticker_file_id",
            )) ==
            null
        ? null
        : json.getString(
            "sticker_file_id",
          )!,
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultCachedStickerToJson(
    InlineQueryResultCachedSticker instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("sticker_file_id",
      instance.stickerFileId == null ? null : instance.stickerFileId!);
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultCachedVideo _$InlineQueryResultCachedVideoFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultCachedVideo(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    videoFileId: json.getString(
      "video_file_id",
    )!,
    title: json.getString(
      "title",
    )!,
    description: (value = json.getString(
              "description",
            )) ==
            null
        ? null
        : json.getString(
            "description",
          )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultCachedVideoToJson(
    InlineQueryResultCachedVideo instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("video_file_id", instance.videoFileId);
  write("title", instance.title);
  write("description",
      instance.description == null ? null : instance.description!);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultCachedVoice _$InlineQueryResultCachedVoiceFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultCachedVoice(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    voiceFileId: json.getString(
      "voice_file_id",
    )!,
    title: json.getString(
      "title",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultCachedVoiceToJson(
    InlineQueryResultCachedVoice instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("voice_file_id", instance.voiceFileId);
  write("title", instance.title);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultContact _$InlineQueryResultContactFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultContact(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    phoneNumber: json.getString(
      "phone_number",
    )!,
    firstName: json.getString(
      "first_name",
    )!,
    lastName: (value = json.getString(
              "last_name",
            )) ==
            null
        ? null
        : json.getString(
            "last_name",
          )!,
    vcard: (value = json.getString(
              "vcard",
            )) ==
            null
        ? null
        : json.getString(
            "vcard",
          )!,
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
    thumbUrl: (value = json.getString(
              "thumb_url",
            )) ==
            null
        ? null
        : json.getString(
            "thumb_url",
          )!,
    thumbWidth: (value = json.getInteger(
              "thumb_width",
            )) ==
            null
        ? null
        : json.getInteger(
            "thumb_width",
          )!,
    thumbHeight: (value = json.getInteger(
              "thumb_height",
            )) ==
            null
        ? null
        : json.getInteger(
            "thumb_height",
          )!,
  );
}

JsonObjectEx _$InlineQueryResultContactToJson(
    InlineQueryResultContact instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("phone_number", instance.phoneNumber);
  write("first_name", instance.firstName);
  write("last_name", instance.lastName == null ? null : instance.lastName!);
  write("vcard", instance.vcard == null ? null : instance.vcard!);
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  write("thumb_url", instance.thumbUrl == null ? null : instance.thumbUrl!);
  write(
      "thumb_width", instance.thumbWidth == null ? null : instance.thumbWidth!);
  write("thumb_height",
      instance.thumbHeight == null ? null : instance.thumbHeight!);
  return json;
}

InlineQueryResultDocument _$InlineQueryResultDocumentFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultDocument(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    title: json.getString(
      "title",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    documentUrl: json.getString(
      "document_url",
    )!,
    mimeType: json.getString(
      "mime_type",
    )!,
    description: (value = json.getString(
              "description",
            )) ==
            null
        ? null
        : json.getString(
            "description",
          )!,
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
    thumbUrl: (value = json.getString(
              "thumb_url",
            )) ==
            null
        ? null
        : json.getString(
            "thumb_url",
          )!,
    thumbWidth: (value = json.getInteger(
              "thumb_width",
            )) ==
            null
        ? null
        : json.getInteger(
            "thumb_width",
          )!,
    thumbHeight: (value = json.getInteger(
              "thumb_height",
            )) ==
            null
        ? null
        : json.getInteger(
            "thumb_height",
          )!,
  );
}

JsonObjectEx _$InlineQueryResultDocumentToJson(
    InlineQueryResultDocument instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("title", instance.title);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write("document_url", instance.documentUrl);
  write("mime_type", instance.mimeType);
  write("description",
      instance.description == null ? null : instance.description!);
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  write("thumb_url", instance.thumbUrl == null ? null : instance.thumbUrl!);
  write(
      "thumb_width", instance.thumbWidth == null ? null : instance.thumbWidth!);
  write("thumb_height",
      instance.thumbHeight == null ? null : instance.thumbHeight!);
  return json;
}

InlineQueryResultGame _$InlineQueryResultGameFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultGame(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    gameShortName: json.getString(
      "game_short_name",
    )!,
  );
}

JsonObjectEx _$InlineQueryResultGameToJson(InlineQueryResultGame instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("game_short_name", instance.gameShortName);
  return json;
}

InlineQueryResultGif _$InlineQueryResultGifFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultGif(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    gifUrl: json.getString(
      "gif_url",
    )!,
    gifWidth: (value = json.getInteger(
              "gif_width",
            )) ==
            null
        ? null
        : json.getInteger(
            "gif_width",
          )!,
    gifHeight: (value = json.getInteger(
              "gif_height",
            )) ==
            null
        ? null
        : json.getInteger(
            "gif_height",
          )!,
    gifDuration: (value = json.getInteger(
              "gif_duration",
            )) ==
            null
        ? null
        : json.getInteger(
            "gif_duration",
          )!,
    thumbUrl: json.getString(
      "thumb_url",
    )!,
    thumbMimeType: (value = json.getString(
              "thumb_mime_type",
            )) ==
            null
        ? null
        : json.getString(
            "thumb_mime_type",
          )!,
    title: (value = json.getString(
              "title",
            )) ==
            null
        ? null
        : json.getString(
            "title",
          )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultGifToJson(InlineQueryResultGif instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("gif_url", instance.gifUrl);
  write("gif_width", instance.gifWidth == null ? null : instance.gifWidth!);
  write("gif_height", instance.gifHeight == null ? null : instance.gifHeight!);
  write("gif_duration",
      instance.gifDuration == null ? null : instance.gifDuration!);
  write("thumb_url", instance.thumbUrl);
  write("thumb_mime_type",
      instance.thumbMimeType == null ? null : instance.thumbMimeType!);
  write("title", instance.title == null ? null : instance.title!);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultLocation _$InlineQueryResultLocationFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultLocation(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    latitude: json.getDouble(
      "latitude",
    )!,
    longitude: json.getDouble(
      "longitude",
    )!,
    title: json.getString(
      "title",
    )!,
    horizontalAccuracy: (value = json.getDouble(
              "horizontal_accuracy",
            )) ==
            null
        ? null
        : json.getDouble(
            "horizontal_accuracy",
          )!,
    livePeriod: (value = json.getInteger(
              "live_period",
            )) ==
            null
        ? null
        : json.getInteger(
            "live_period",
          )!,
    heading: (value = json.getInteger(
              "heading",
            )) ==
            null
        ? null
        : json.getInteger(
            "heading",
          )!,
    proximityAlertRadius: (value = json.getInteger(
              "proximity_alert_radius",
            )) ==
            null
        ? null
        : json.getInteger(
            "proximity_alert_radius",
          )!,
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
    thumbUrl: (value = json.getString(
              "thumb_url",
            )) ==
            null
        ? null
        : json.getString(
            "thumb_url",
          )!,
    thumbWidth: (value = json.getInteger(
              "thumb_width",
            )) ==
            null
        ? null
        : json.getInteger(
            "thumb_width",
          )!,
    thumbHeight: (value = json.getInteger(
              "thumb_height",
            )) ==
            null
        ? null
        : json.getInteger(
            "thumb_height",
          )!,
  );
}

JsonObjectEx _$InlineQueryResultLocationToJson(
    InlineQueryResultLocation instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("latitude", instance.latitude);
  write("longitude", instance.longitude);
  write("title", instance.title);
  write(
      "horizontal_accuracy",
      instance.horizontalAccuracy == null
          ? null
          : instance.horizontalAccuracy!);
  write(
      "live_period", instance.livePeriod == null ? null : instance.livePeriod!);
  write("heading", instance.heading == null ? null : instance.heading!);
  write(
      "proximity_alert_radius",
      instance.proximityAlertRadius == null
          ? null
          : instance.proximityAlertRadius!);
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  write("thumb_url", instance.thumbUrl == null ? null : instance.thumbUrl!);
  write(
      "thumb_width", instance.thumbWidth == null ? null : instance.thumbWidth!);
  write("thumb_height",
      instance.thumbHeight == null ? null : instance.thumbHeight!);
  return json;
}

InlineQueryResultMpeg4Gif _$InlineQueryResultMpeg4GifFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultMpeg4Gif(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    mpeg4Url: json.getString(
      "mpeg4_url",
    )!,
    mpeg4Width: (value = json.getInteger(
              "mpeg4_width",
            )) ==
            null
        ? null
        : json.getInteger(
            "mpeg4_width",
          )!,
    mpeg4Height: (value = json.getInteger(
              "mpeg4_height",
            )) ==
            null
        ? null
        : json.getInteger(
            "mpeg4_height",
          )!,
    mpeg4Duration: (value = json.getInteger(
              "mpeg4_duration",
            )) ==
            null
        ? null
        : json.getInteger(
            "mpeg4_duration",
          )!,
    thumbUrl: json.getString(
      "thumb_url",
    )!,
    thumbMimeType: (value = json.getString(
              "thumb_mime_type",
            )) ==
            null
        ? null
        : json.getString(
            "thumb_mime_type",
          )!,
    title: (value = json.getString(
              "title",
            )) ==
            null
        ? null
        : json.getString(
            "title",
          )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultMpeg4GifToJson(
    InlineQueryResultMpeg4Gif instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("mpeg4_url", instance.mpeg4Url);
  write(
      "mpeg4_width", instance.mpeg4Width == null ? null : instance.mpeg4Width!);
  write("mpeg4_height",
      instance.mpeg4Height == null ? null : instance.mpeg4Height!);
  write("mpeg4_duration",
      instance.mpeg4Duration == null ? null : instance.mpeg4Duration!);
  write("thumb_url", instance.thumbUrl);
  write("thumb_mime_type",
      instance.thumbMimeType == null ? null : instance.thumbMimeType!);
  write("title", instance.title == null ? null : instance.title!);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultPhoto _$InlineQueryResultPhotoFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultPhoto(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    photoUrl: json.getString(
      "photo_url",
    )!,
    thumbUrl: json.getString(
      "thumb_url",
    )!,
    photoWidth: (value = json.getInteger(
              "photo_width",
            )) ==
            null
        ? null
        : json.getInteger(
            "photo_width",
          )!,
    photoHeight: (value = json.getInteger(
              "photo_height",
            )) ==
            null
        ? null
        : json.getInteger(
            "photo_height",
          )!,
    title: (value = json.getString(
              "title",
            )) ==
            null
        ? null
        : json.getString(
            "title",
          )!,
    description: (value = json.getString(
              "description",
            )) ==
            null
        ? null
        : json.getString(
            "description",
          )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultPhotoToJson(InlineQueryResultPhoto instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("photo_url", instance.photoUrl);
  write("thumb_url", instance.thumbUrl);
  write(
      "photo_width", instance.photoWidth == null ? null : instance.photoWidth!);
  write("photo_height",
      instance.photoHeight == null ? null : instance.photoHeight!);
  write("title", instance.title == null ? null : instance.title!);
  write("description",
      instance.description == null ? null : instance.description!);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultVenue _$InlineQueryResultVenueFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultVenue(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    latitude: json.getDouble(
      "latitude",
    )!,
    longitude: json.getDouble(
      "longitude",
    )!,
    title: json.getString(
      "title",
    )!,
    address: json.getString(
      "address",
    )!,
    foursquareId: (value = json.getString(
              "foursquare_id",
            )) ==
            null
        ? null
        : json.getString(
            "foursquare_id",
          )!,
    foursquareType: (value = json.getString(
              "foursquare_type",
            )) ==
            null
        ? null
        : json.getString(
            "foursquare_type",
          )!,
    googlePlaceId: (value = json.getString(
              "google_place_id",
            )) ==
            null
        ? null
        : json.getString(
            "google_place_id",
          )!,
    googlePlaceType: (value = json.getString(
              "google_place_type",
            )) ==
            null
        ? null
        : json.getString(
            "google_place_type",
          )!,
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
    thumbUrl: (value = json.getString(
              "thumb_url",
            )) ==
            null
        ? null
        : json.getString(
            "thumb_url",
          )!,
    thumbWidth: (value = json.getInteger(
              "thumb_width",
            )) ==
            null
        ? null
        : json.getInteger(
            "thumb_width",
          )!,
    thumbHeight: (value = json.getInteger(
              "thumb_height",
            )) ==
            null
        ? null
        : json.getInteger(
            "thumb_height",
          )!,
  );
}

JsonObjectEx _$InlineQueryResultVenueToJson(InlineQueryResultVenue instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("latitude", instance.latitude);
  write("longitude", instance.longitude);
  write("title", instance.title);
  write("address", instance.address);
  write("foursquare_id",
      instance.foursquareId == null ? null : instance.foursquareId!);
  write("foursquare_type",
      instance.foursquareType == null ? null : instance.foursquareType!);
  write("google_place_id",
      instance.googlePlaceId == null ? null : instance.googlePlaceId!);
  write("google_place_type",
      instance.googlePlaceType == null ? null : instance.googlePlaceType!);
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  write("thumb_url", instance.thumbUrl == null ? null : instance.thumbUrl!);
  write(
      "thumb_width", instance.thumbWidth == null ? null : instance.thumbWidth!);
  write("thumb_height",
      instance.thumbHeight == null ? null : instance.thumbHeight!);
  return json;
}

InlineQueryResultVideo _$InlineQueryResultVideoFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultVideo(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    videoUrl: json.getString(
      "video_url",
    )!,
    mimeType: json.getString(
      "mime_type",
    )!,
    thumbUrl: json.getString(
      "thumb_url",
    )!,
    title: json.getString(
      "title",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    videoWidth: (value = json.getInteger(
              "video_width",
            )) ==
            null
        ? null
        : json.getInteger(
            "video_width",
          )!,
    videoHeight: (value = json.getInteger(
              "video_height",
            )) ==
            null
        ? null
        : json.getInteger(
            "video_height",
          )!,
    videoDuration: (value = json.getInteger(
              "video_duration",
            )) ==
            null
        ? null
        : json.getInteger(
            "video_duration",
          )!,
    description: (value = json.getString(
              "description",
            )) ==
            null
        ? null
        : json.getString(
            "description",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultVideoToJson(InlineQueryResultVideo instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("video_url", instance.videoUrl);
  write("mime_type", instance.mimeType);
  write("thumb_url", instance.thumbUrl);
  write("title", instance.title);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "video_width", instance.videoWidth == null ? null : instance.videoWidth!);
  write("video_height",
      instance.videoHeight == null ? null : instance.videoHeight!);
  write("video_duration",
      instance.videoDuration == null ? null : instance.videoDuration!);
  write("description",
      instance.description == null ? null : instance.description!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InlineQueryResultVoice _$InlineQueryResultVoiceFromJson(JsonObjectEx json) {
  dynamic value;
  return InlineQueryResultVoice(
    id: json.getString(
      "id",
    )!,
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
    voiceUrl: json.getString(
      "voice_url",
    )!,
    title: json.getString(
      "title",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    voiceDuration: (value = json.getInteger(
              "voice_duration",
            )) ==
            null
        ? null
        : json.getInteger(
            "voice_duration",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    inputMessageContent: (value = json.getJsonObject(
              "input_message_content",
            )) ==
            null
        ? null
        : _$InputMessageContentFromJson(
            json.getJsonObject(
              "input_message_content",
            )!,
          ),
  );
}

JsonObjectEx _$InlineQueryResultVoiceToJson(InlineQueryResultVoice instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  write("voice_url", instance.voiceUrl);
  write("title", instance.title);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write("voice_duration",
      instance.voiceDuration == null ? null : instance.voiceDuration!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "input_message_content",
      instance.inputMessageContent == null
          ? null
          : _$InputMessageContentToJson(
              instance.inputMessageContent!,
            ));
  return json;
}

InputContactMessageContent _$InputContactMessageContentFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InputContactMessageContent(
    phoneNumber: json.getString(
      "phone_number",
    )!,
    firstName: json.getString(
      "first_name",
    )!,
    lastName: (value = json.getString(
              "last_name",
            )) ==
            null
        ? null
        : json.getString(
            "last_name",
          )!,
    vcard: (value = json.getString(
              "vcard",
            )) ==
            null
        ? null
        : json.getString(
            "vcard",
          )!,
  );
}

JsonObjectEx _$InputContactMessageContentToJson(
    InputContactMessageContent instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("phone_number", instance.phoneNumber);
  write("first_name", instance.firstName);
  write("last_name", instance.lastName == null ? null : instance.lastName!);
  write("vcard", instance.vcard == null ? null : instance.vcard!);
  return json;
}

InputInvoiceMessageContent _$InputInvoiceMessageContentFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InputInvoiceMessageContent(
    title: json.getString(
      "title",
    )!,
    description: json.getString(
      "description",
    )!,
    payload: json.getString(
      "payload",
    )!,
    providerToken: json.getString(
      "provider_token",
    )!,
    currency: json.getString(
      "currency",
    )!,
    prices: json
        .getJsonArray<JsonObjectEx>(
          "prices",
        )!
        .map(
          (e) => _$LabeledPriceFromJson(
            e,
          ),
        )
        .toList(),
    maxTipAmount: (value = json.getInteger(
              "max_tip_amount",
            )) ==
            null
        ? null
        : json.getInteger(
            "max_tip_amount",
          )!,
    suggestedTipAmounts: (value = json.getArray(
              "suggested_tip_amounts",
            )) ==
            null
        ? null
        : json.getArray(
            "suggested_tip_amounts",
          )!,
    providerData: (value = json.getString(
              "provider_data",
            )) ==
            null
        ? null
        : json.getString(
            "provider_data",
          )!,
    photoSize: (value = json.getInteger(
              "photo_size",
            )) ==
            null
        ? null
        : json.getInteger(
            "photo_size",
          )!,
    photoWidth: (value = json.getInteger(
              "photo_width",
            )) ==
            null
        ? null
        : json.getInteger(
            "photo_width",
          )!,
    photoHeight: (value = json.getInteger(
              "photo_height",
            )) ==
            null
        ? null
        : json.getInteger(
            "photo_height",
          )!,
    needName: (value = json.getBoolean(
              "need_name",
            )) ==
            null
        ? null
        : json.getBoolean(
            "need_name",
          )!,
    needPhoneNumber: (value = json.getBoolean(
              "need_phone_number",
            )) ==
            null
        ? null
        : json.getBoolean(
            "need_phone_number",
          )!,
    needEmail: (value = json.getBoolean(
              "need_email",
            )) ==
            null
        ? null
        : json.getBoolean(
            "need_email",
          )!,
    needShippingAddress: (value = json.getBoolean(
              "need_shipping_address",
            )) ==
            null
        ? null
        : json.getBoolean(
            "need_shipping_address",
          )!,
    sendPhoneNumberToProvider: (value = json.getBoolean(
              "send_phone_number_to_provider",
            )) ==
            null
        ? null
        : json.getBoolean(
            "send_phone_number_to_provider",
          )!,
    sendEmailToProvider: (value = json.getBoolean(
              "send_email_to_provider",
            )) ==
            null
        ? null
        : json.getBoolean(
            "send_email_to_provider",
          )!,
    isFlexible: (value = json.getBoolean(
              "is_flexible",
            )) ==
            null
        ? null
        : json.getBoolean(
            "is_flexible",
          )!,
  );
}

JsonObjectEx _$InputInvoiceMessageContentToJson(
    InputInvoiceMessageContent instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("title", instance.title);
  write("description", instance.description);
  write("payload", instance.payload);
  write("provider_token", instance.providerToken);
  write("currency", instance.currency);
  write(
      "prices",
      instance.prices.map(
            (e) => _$LabeledPriceToJson(
              e,
            ),
          )
          .toList());
  write("max_tip_amount",
      instance.maxTipAmount == null ? null : instance.maxTipAmount!);
  write(
      "suggested_tip_amounts",
      instance.suggestedTipAmounts == null
          ? null
          : instance.suggestedTipAmounts!);
  write("provider_data",
      instance.providerData == null ? null : instance.providerData!);
  write("photo_size", instance.photoSize == null ? null : instance.photoSize!);
  write(
      "photo_width", instance.photoWidth == null ? null : instance.photoWidth!);
  write("photo_height",
      instance.photoHeight == null ? null : instance.photoHeight!);
  write("need_name", instance.needName == null ? null : instance.needName!);
  write("need_phone_number",
      instance.needPhoneNumber == null ? null : instance.needPhoneNumber!);
  write("need_email", instance.needEmail == null ? null : instance.needEmail!);
  write(
      "need_shipping_address",
      instance.needShippingAddress == null
          ? null
          : instance.needShippingAddress!);
  write(
      "send_phone_number_to_provider",
      instance.sendPhoneNumberToProvider == null
          ? null
          : instance.sendPhoneNumberToProvider!);
  write(
      "send_email_to_provider",
      instance.sendEmailToProvider == null
          ? null
          : instance.sendEmailToProvider!);
  write(
      "is_flexible", instance.isFlexible == null ? null : instance.isFlexible!);
  return json;
}

InputLocationMessageContent _$InputLocationMessageContentFromJson(
    JsonObjectEx json) {
  dynamic value;
  return InputLocationMessageContent(
    latitude: json.getDouble(
      "latitude",
    )!,
    longitude: json.getDouble(
      "longitude",
    )!,
    horizontalAccuracy: (value = json.getDouble(
              "horizontal_accuracy",
            )) ==
            null
        ? null
        : json.getDouble(
            "horizontal_accuracy",
          )!,
    livePeriod: (value = json.getInteger(
              "live_period",
            )) ==
            null
        ? null
        : json.getInteger(
            "live_period",
          )!,
    heading: (value = json.getInteger(
              "heading",
            )) ==
            null
        ? null
        : json.getInteger(
            "heading",
          )!,
    proximityAlertRadius: (value = json.getInteger(
              "proximity_alert_radius",
            )) ==
            null
        ? null
        : json.getInteger(
            "proximity_alert_radius",
          )!,
  );
}

JsonObjectEx _$InputLocationMessageContentToJson(
    InputLocationMessageContent instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("latitude", instance.latitude);
  write("longitude", instance.longitude);
  write(
      "horizontal_accuracy",
      instance.horizontalAccuracy == null
          ? null
          : instance.horizontalAccuracy!);
  write(
      "live_period", instance.livePeriod == null ? null : instance.livePeriod!);
  write("heading", instance.heading == null ? null : instance.heading!);
  write(
      "proximity_alert_radius",
      instance.proximityAlertRadius == null
          ? null
          : instance.proximityAlertRadius!);
  return json;
}

InputMediaAnimation _$InputMediaAnimationFromJson(JsonObjectEx json) {
  dynamic value;
  return InputMediaAnimation(
    media: json.getString(
      "media",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    thumb: json.getDynamic(
      "thumb",
    ),
    width: (value = json.getInteger(
              "width",
            )) ==
            null
        ? null
        : json.getInteger(
            "width",
          )!,
    height: (value = json.getInteger(
              "height",
            )) ==
            null
        ? null
        : json.getInteger(
            "height",
          )!,
    duration: (value = json.getInteger(
              "duration",
            )) ==
            null
        ? null
        : json.getInteger(
            "duration",
          )!,
  );
}

JsonObjectEx _$InputMediaAnimationToJson(InputMediaAnimation instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("media", instance.media);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write("thumb", instance.thumb!);
  write("width", instance.width == null ? null : instance.width!);
  write("height", instance.height == null ? null : instance.height!);
  write("duration", instance.duration == null ? null : instance.duration!);
  return json;
}

InputMediaAudio _$InputMediaAudioFromJson(JsonObjectEx json) {
  dynamic value;
  return InputMediaAudio(
    media: json.getString(
      "media",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    thumb: json.getDynamic(
      "thumb",
    ),
    duration: (value = json.getInteger(
              "duration",
            )) ==
            null
        ? null
        : json.getInteger(
            "duration",
          )!,
    performer: (value = json.getString(
              "performer",
            )) ==
            null
        ? null
        : json.getString(
            "performer",
          )!,
    title: (value = json.getString(
              "title",
            )) ==
            null
        ? null
        : json.getString(
            "title",
          )!,
  );
}

JsonObjectEx _$InputMediaAudioToJson(InputMediaAudio instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("media", instance.media);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write("thumb", instance.thumb!);
  write("duration", instance.duration == null ? null : instance.duration!);
  write("performer", instance.performer == null ? null : instance.performer!);
  write("title", instance.title == null ? null : instance.title!);
  return json;
}

InputMediaDocument _$InputMediaDocumentFromJson(JsonObjectEx json) {
  dynamic value;
  return InputMediaDocument(
    media: json.getString(
      "media",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    thumb: json.getDynamic(
      "thumb",
    ),
    disableContentTypeDetection: (value = json.getBoolean(
              "disable_content_type_detection",
            )) ==
            null
        ? null
        : json.getBoolean(
            "disable_content_type_detection",
          )!,
  );
}

JsonObjectEx _$InputMediaDocumentToJson(InputMediaDocument instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("media", instance.media);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write("thumb", instance.thumb!);
  write(
      "disable_content_type_detection",
      instance.disableContentTypeDetection == null
          ? null
          : instance.disableContentTypeDetection!);
  return json;
}

InputMediaPhoto _$InputMediaPhotoFromJson(JsonObjectEx json) {
  dynamic value;
  return InputMediaPhoto(
    media: json.getString(
      "media",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
  );
}

JsonObjectEx _$InputMediaPhotoToJson(InputMediaPhoto instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("media", instance.media);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  return json;
}

InputMediaVideo _$InputMediaVideoFromJson(JsonObjectEx json) {
  dynamic value;
  return InputMediaVideo(
    media: json.getString(
      "media",
    )!,
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    thumb: json.getDynamic(
      "thumb",
    ),
    width: (value = json.getInteger(
              "width",
            )) ==
            null
        ? null
        : json.getInteger(
            "width",
          )!,
    height: (value = json.getInteger(
              "height",
            )) ==
            null
        ? null
        : json.getInteger(
            "height",
          )!,
    duration: (value = json.getInteger(
              "duration",
            )) ==
            null
        ? null
        : json.getInteger(
            "duration",
          )!,
    supportsStreaming: (value = json.getBoolean(
              "supports_streaming",
            )) ==
            null
        ? null
        : json.getBoolean(
            "supports_streaming",
          )!,
  );
}

JsonObjectEx _$InputMediaVideoToJson(InputMediaVideo instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("media", instance.media);
  write("caption", instance.caption == null ? null : instance.caption!);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write("thumb", instance.thumb!);
  write("width", instance.width == null ? null : instance.width!);
  write("height", instance.height == null ? null : instance.height!);
  write("duration", instance.duration == null ? null : instance.duration!);
  write("supports_streaming",
      instance.supportsStreaming == null ? null : instance.supportsStreaming!);
  return json;
}

InputTextMessageContent _$InputTextMessageContentFromJson(JsonObjectEx json) {
  dynamic value;
  return InputTextMessageContent(
    messageText: json.getString(
      "message_text",
    )!,
    parseMode: (value = json.getString(
              "parse_mode",
            )) ==
            null
        ? null
        : json.getString(
            "parse_mode",
          )!,
    disableWebPagePreview: (value = json.getBoolean(
              "disable_web_page_preview",
            )) ==
            null
        ? null
        : json.getBoolean(
            "disable_web_page_preview",
          )!,
  );
}

JsonObjectEx _$InputTextMessageContentToJson(InputTextMessageContent instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("message_text", instance.messageText);
  write("parse_mode", instance.parseMode == null ? null : instance.parseMode!);
  write(
      "disable_web_page_preview",
      instance.disableWebPagePreview == null
          ? null
          : instance.disableWebPagePreview!);
  return json;
}

InputVenueMessageContent _$InputVenueMessageContentFromJson(JsonObjectEx json) {
  dynamic value;
  return InputVenueMessageContent(
    latitude: json.getDouble(
      "latitude",
    )!,
    longitude: json.getDouble(
      "longitude",
    )!,
    title: json.getString(
      "title",
    )!,
    address: json.getString(
      "address",
    )!,
    foursquareId: (value = json.getString(
              "foursquare_id",
            )) ==
            null
        ? null
        : json.getString(
            "foursquare_id",
          )!,
    foursquareType: (value = json.getString(
              "foursquare_type",
            )) ==
            null
        ? null
        : json.getString(
            "foursquare_type",
          )!,
    googlePlaceId: (value = json.getString(
              "google_place_id",
            )) ==
            null
        ? null
        : json.getString(
            "google_place_id",
          )!,
    googlePlaceType: (value = json.getString(
              "google_place_type",
            )) ==
            null
        ? null
        : json.getString(
            "google_place_type",
          )!,
  );
}

JsonObjectEx _$InputVenueMessageContentToJson(
    InputVenueMessageContent instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("latitude", instance.latitude);
  write("longitude", instance.longitude);
  write("title", instance.title);
  write("address", instance.address);
  write("foursquare_id",
      instance.foursquareId == null ? null : instance.foursquareId!);
  write("foursquare_type",
      instance.foursquareType == null ? null : instance.foursquareType!);
  write("google_place_id",
      instance.googlePlaceId == null ? null : instance.googlePlaceId!);
  write("google_place_type",
      instance.googlePlaceType == null ? null : instance.googlePlaceType!);
  return json;
}

Invoice _$InvoiceFromJson(JsonObjectEx json) {
  dynamic value;
  return Invoice(
    title: json.getString(
      "title",
    )!,
    description: json.getString(
      "description",
    )!,
    startParameter: json.getString(
      "start_parameter",
    )!,
    currency: json.getString(
      "currency",
    )!,
    totalAmount: json.getInteger(
      "total_amount",
    )!,
  );
}

JsonObjectEx _$InvoiceToJson(Invoice instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("title", instance.title);
  write("description", instance.description);
  write("start_parameter", instance.startParameter);
  write("currency", instance.currency);
  write("total_amount", instance.totalAmount);
  return json;
}

KeyboardButton _$KeyboardButtonFromJson(JsonObjectEx json) {
  dynamic value;
  return KeyboardButton(
    text: json.getString(
      "text",
    )!,
    requestContact: (value = json.getBoolean(
              "request_contact",
            )) ==
            null
        ? null
        : json.getBoolean(
            "request_contact",
          )!,
    requestLocation: (value = json.getBoolean(
              "request_location",
            )) ==
            null
        ? null
        : json.getBoolean(
            "request_location",
          )!,
    requestPoll: (value = json.getJsonObject(
              "request_poll",
            )) ==
            null
        ? null
        : _$KeyboardButtonPollTypeFromJson(
            json.getJsonObject(
              "request_poll",
            )!,
          ),
  );
}

JsonObjectEx _$KeyboardButtonToJson(KeyboardButton instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("text", instance.text);
  write("request_contact",
      instance.requestContact == null ? null : instance.requestContact!);
  write("request_location",
      instance.requestLocation == null ? null : instance.requestLocation!);
  write(
      "request_poll",
      instance.requestPoll == null
          ? null
          : _$KeyboardButtonPollTypeToJson(
              instance.requestPoll!,
            ));
  return json;
}

KeyboardButtonPollType _$KeyboardButtonPollTypeFromJson(JsonObjectEx json) {
  dynamic value;
  return KeyboardButtonPollType(
    type: (value = json.getString(
              "type",
            )) ==
            null
        ? null
        : json.getString(
            "type",
          )!,
  );
}

JsonObjectEx _$KeyboardButtonPollTypeToJson(KeyboardButtonPollType instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("type", instance.type == null ? null : instance.type!);
  return json;
}

LabeledPrice _$LabeledPriceFromJson(JsonObjectEx json) {
  dynamic value;
  return LabeledPrice(
    label: json.getString(
      "label",
    )!,
    amount: json.getInteger(
      "amount",
    )!,
  );
}

JsonObjectEx _$LabeledPriceToJson(LabeledPrice instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("label", instance.label);
  write("amount", instance.amount);
  return json;
}

Location _$LocationFromJson(JsonObjectEx json) {
  dynamic value;
  return Location(
    longitude: json.getDouble(
      "longitude",
    )!,
    latitude: json.getDouble(
      "latitude",
    )!,
    horizontalAccuracy: (value = json.getDouble(
              "horizontal_accuracy",
            )) ==
            null
        ? null
        : json.getDouble(
            "horizontal_accuracy",
          )!,
    livePeriod: (value = json.getInteger(
              "live_period",
            )) ==
            null
        ? null
        : json.getInteger(
            "live_period",
          )!,
    heading: (value = json.getInteger(
              "heading",
            )) ==
            null
        ? null
        : json.getInteger(
            "heading",
          )!,
    proximityAlertRadius: (value = json.getInteger(
              "proximity_alert_radius",
            )) ==
            null
        ? null
        : json.getInteger(
            "proximity_alert_radius",
          )!,
  );
}

JsonObjectEx _$LocationToJson(Location instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("longitude", instance.longitude);
  write("latitude", instance.latitude);
  write(
      "horizontal_accuracy",
      instance.horizontalAccuracy == null
          ? null
          : instance.horizontalAccuracy!);
  write(
      "live_period", instance.livePeriod == null ? null : instance.livePeriod!);
  write("heading", instance.heading == null ? null : instance.heading!);
  write(
      "proximity_alert_radius",
      instance.proximityAlertRadius == null
          ? null
          : instance.proximityAlertRadius!);
  return json;
}

LoginUrl _$LoginUrlFromJson(JsonObjectEx json) {
  dynamic value;
  return LoginUrl(
    url: json.getString(
      "url",
    )!,
    forwardText: (value = json.getString(
              "forward_text",
            )) ==
            null
        ? null
        : json.getString(
            "forward_text",
          )!,
    botUsername: (value = json.getString(
              "bot_username",
            )) ==
            null
        ? null
        : json.getString(
            "bot_username",
          )!,
    requestWriteAccess: (value = json.getBoolean(
              "request_write_access",
            )) ==
            null
        ? null
        : json.getBoolean(
            "request_write_access",
          )!,
  );
}

JsonObjectEx _$LoginUrlToJson(LoginUrl instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("url", instance.url);
  write("forward_text",
      instance.forwardText == null ? null : instance.forwardText!);
  write("bot_username",
      instance.botUsername == null ? null : instance.botUsername!);
  write(
      "request_write_access",
      instance.requestWriteAccess == null
          ? null
          : instance.requestWriteAccess!);
  return json;
}

MaskPosition _$MaskPositionFromJson(JsonObjectEx json) {
  dynamic value;
  return MaskPosition(
    point: json.getString(
      "point",
    )!,
    xShift: json.getDouble(
      "x_shift",
    )!,
    yShift: json.getDouble(
      "y_shift",
    )!,
    scale: json.getDouble(
      "scale",
    )!,
  );
}

JsonObjectEx _$MaskPositionToJson(MaskPosition instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("point", instance.point);
  write("x_shift", instance.xShift);
  write("y_shift", instance.yShift);
  write("scale", instance.scale);
  return json;
}

Message _$MessageFromJson(JsonObjectEx json) {
  dynamic value;
  return Message(
    messageId: json.getInteger(
      "message_id",
    )!,
    from: (value = json.getJsonObject(
              "from",
            )) ==
            null
        ? null
        : _$UserFromJson(
            json.getJsonObject(
              "from",
            )!,
          ),
    senderChat: (value = json.getJsonObject(
              "sender_chat",
            )) ==
            null
        ? null
        : _$ChatFromJson(
            json.getJsonObject(
              "sender_chat",
            )!,
          ),
    date: json.getInteger(
      "date",
    )!,
    chat: _$ChatFromJson(
      json.getJsonObject(
        "chat",
      )!,
    ),
    forwardFrom: (value = json.getJsonObject(
              "forward_from",
            )) ==
            null
        ? null
        : _$UserFromJson(
            json.getJsonObject(
              "forward_from",
            )!,
          ),
    forwardFromChat: (value = json.getJsonObject(
              "forward_from_chat",
            )) ==
            null
        ? null
        : _$ChatFromJson(
            json.getJsonObject(
              "forward_from_chat",
            )!,
          ),
    forwardFromMessageId: (value = json.getInteger(
              "forward_from_message_id",
            )) ==
            null
        ? null
        : json.getInteger(
            "forward_from_message_id",
          )!,
    forwardSignature: (value = json.getString(
              "forward_signature",
            )) ==
            null
        ? null
        : json.getString(
            "forward_signature",
          )!,
    forwardSenderName: (value = json.getString(
              "forward_sender_name",
            )) ==
            null
        ? null
        : json.getString(
            "forward_sender_name",
          )!,
    forwardDate: (value = json.getInteger(
              "forward_date",
            )) ==
            null
        ? null
        : json.getInteger(
            "forward_date",
          )!,
    replyToMessage: (value = json.getJsonObject(
              "reply_to_message",
            )) ==
            null
        ? null
        : _$MessageFromJson(
            json.getJsonObject(
              "reply_to_message",
            )!,
          ),
    viaBot: (value = json.getJsonObject(
              "via_bot",
            )) ==
            null
        ? null
        : _$UserFromJson(
            json.getJsonObject(
              "via_bot",
            )!,
          ),
    editDate: (value = json.getInteger(
              "edit_date",
            )) ==
            null
        ? null
        : json.getInteger(
            "edit_date",
          )!,
    mediaGroupId: (value = json.getString(
              "media_group_id",
            )) ==
            null
        ? null
        : json.getString(
            "media_group_id",
          )!,
    authorSignature: (value = json.getString(
              "author_signature",
            )) ==
            null
        ? null
        : json.getString(
            "author_signature",
          )!,
    text: (value = json.getString(
              "text",
            )) ==
            null
        ? null
        : json.getString(
            "text",
          )!,
    entities: (value = json.getJsonArray(
              "entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    animation: (value = json.getJsonObject(
              "animation",
            )) ==
            null
        ? null
        : _$AnimationFromJson(
            json.getJsonObject(
              "animation",
            )!,
          ),
    audio: (value = json.getJsonObject(
              "audio",
            )) ==
            null
        ? null
        : _$AudioFromJson(
            json.getJsonObject(
              "audio",
            )!,
          ),
    document: (value = json.getJsonObject(
              "document",
            )) ==
            null
        ? null
        : _$DocumentFromJson(
            json.getJsonObject(
              "document",
            )!,
          ),
    photo: (value = json.getJsonArray(
              "photo",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "photo",
            )!
            .map(
              (e) => _$PhotoSizeFromJson(
                e,
              ),
            )
            .toList(),
    sticker: (value = json.getJsonObject(
              "sticker",
            )) ==
            null
        ? null
        : _$StickerFromJson(
            json.getJsonObject(
              "sticker",
            )!,
          ),
    video: (value = json.getJsonObject(
              "video",
            )) ==
            null
        ? null
        : _$VideoFromJson(
            json.getJsonObject(
              "video",
            )!,
          ),
    videoNote: (value = json.getJsonObject(
              "video_note",
            )) ==
            null
        ? null
        : _$VideoNoteFromJson(
            json.getJsonObject(
              "video_note",
            )!,
          ),
    voice: (value = json.getJsonObject(
              "voice",
            )) ==
            null
        ? null
        : _$VoiceFromJson(
            json.getJsonObject(
              "voice",
            )!,
          ),
    caption: (value = json.getString(
              "caption",
            )) ==
            null
        ? null
        : json.getString(
            "caption",
          )!,
    captionEntities: (value = json.getJsonArray(
              "caption_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "caption_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    contact: (value = json.getJsonObject(
              "contact",
            )) ==
            null
        ? null
        : _$ContactFromJson(
            json.getJsonObject(
              "contact",
            )!,
          ),
    dice: (value = json.getJsonObject(
              "dice",
            )) ==
            null
        ? null
        : _$DiceFromJson(
            json.getJsonObject(
              "dice",
            )!,
          ),
    game: (value = json.getJsonObject(
              "game",
            )) ==
            null
        ? null
        : _$GameFromJson(
            json.getJsonObject(
              "game",
            )!,
          ),
    poll: (value = json.getJsonObject(
              "poll",
            )) ==
            null
        ? null
        : _$PollFromJson(
            json.getJsonObject(
              "poll",
            )!,
          ),
    venue: (value = json.getJsonObject(
              "venue",
            )) ==
            null
        ? null
        : _$VenueFromJson(
            json.getJsonObject(
              "venue",
            )!,
          ),
    location: (value = json.getJsonObject(
              "location",
            )) ==
            null
        ? null
        : _$LocationFromJson(
            json.getJsonObject(
              "location",
            )!,
          ),
    newChatMembers: (value = json.getJsonArray(
              "new_chat_members",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "new_chat_members",
            )!
            .map(
              (e) => _$UserFromJson(
                e,
              ),
            )
            .toList(),
    leftChatMember: (value = json.getJsonObject(
              "left_chat_member",
            )) ==
            null
        ? null
        : _$UserFromJson(
            json.getJsonObject(
              "left_chat_member",
            )!,
          ),
    newChatTitle: (value = json.getString(
              "new_chat_title",
            )) ==
            null
        ? null
        : json.getString(
            "new_chat_title",
          )!,
    newChatPhoto: (value = json.getJsonArray(
              "new_chat_photo",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "new_chat_photo",
            )!
            .map(
              (e) => _$PhotoSizeFromJson(
                e,
              ),
            )
            .toList(),
    deleteChatPhoto: (value = json.getBoolean(
              "delete_chat_photo",
            )) ==
            null
        ? null
        : json.getBoolean(
            "delete_chat_photo",
          )!,
    groupChatCreated: (value = json.getBoolean(
              "group_chat_created",
            )) ==
            null
        ? null
        : json.getBoolean(
            "group_chat_created",
          )!,
    supergroupChatCreated: (value = json.getBoolean(
              "supergroup_chat_created",
            )) ==
            null
        ? null
        : json.getBoolean(
            "supergroup_chat_created",
          )!,
    channelChatCreated: (value = json.getBoolean(
              "channel_chat_created",
            )) ==
            null
        ? null
        : json.getBoolean(
            "channel_chat_created",
          )!,
    messageAutoDeleteTimerChanged: (value = json.getJsonObject(
              "message_auto_delete_timer_changed",
            )) ==
            null
        ? null
        : _$MessageAutoDeleteTimerChangedFromJson(
            json.getJsonObject(
              "message_auto_delete_timer_changed",
            )!,
          ),
    migrateToChatId: (value = json.getInteger(
              "migrate_to_chat_id",
            )) ==
            null
        ? null
        : json.getInteger(
            "migrate_to_chat_id",
          )!,
    migrateFromChatId: (value = json.getInteger(
              "migrate_from_chat_id",
            )) ==
            null
        ? null
        : json.getInteger(
            "migrate_from_chat_id",
          )!,
    pinnedMessage: (value = json.getJsonObject(
              "pinned_message",
            )) ==
            null
        ? null
        : _$MessageFromJson(
            json.getJsonObject(
              "pinned_message",
            )!,
          ),
    invoice: (value = json.getJsonObject(
              "invoice",
            )) ==
            null
        ? null
        : _$InvoiceFromJson(
            json.getJsonObject(
              "invoice",
            )!,
          ),
    successfulPayment: (value = json.getJsonObject(
              "successful_payment",
            )) ==
            null
        ? null
        : _$SuccessfulPaymentFromJson(
            json.getJsonObject(
              "successful_payment",
            )!,
          ),
    connectedWebsite: (value = json.getString(
              "connected_website",
            )) ==
            null
        ? null
        : json.getString(
            "connected_website",
          )!,
    passportData: (value = json.getJsonObject(
              "passport_data",
            )) ==
            null
        ? null
        : _$PassportDataFromJson(
            json.getJsonObject(
              "passport_data",
            )!,
          ),
    proximityAlertTriggered: (value = json.getJsonObject(
              "proximity_alert_triggered",
            )) ==
            null
        ? null
        : _$ProximityAlertTriggeredFromJson(
            json.getJsonObject(
              "proximity_alert_triggered",
            )!,
          ),
    voiceChatScheduled: (value = json.getJsonObject(
              "voice_chat_scheduled",
            )) ==
            null
        ? null
        : _$VoiceChatScheduledFromJson(
            json.getJsonObject(
              "voice_chat_scheduled",
            )!,
          ),
    voiceChatStarted: (value = json.getJsonObject(
              "voice_chat_started",
            )) ==
            null
        ? null
        : _$VoiceChatStartedFromJson(
            json.getJsonObject(
              "voice_chat_started",
            )!,
          ),
    voiceChatEnded: (value = json.getJsonObject(
              "voice_chat_ended",
            )) ==
            null
        ? null
        : _$VoiceChatEndedFromJson(
            json.getJsonObject(
              "voice_chat_ended",
            )!,
          ),
    voiceChatParticipantsInvited: (value = json.getJsonObject(
              "voice_chat_participants_invited",
            )) ==
            null
        ? null
        : _$VoiceChatParticipantsInvitedFromJson(
            json.getJsonObject(
              "voice_chat_participants_invited",
            )!,
          ),
    replyMarkup: (value = json.getJsonObject(
              "reply_markup",
            )) ==
            null
        ? null
        : _$InlineKeyboardMarkupFromJson(
            json.getJsonObject(
              "reply_markup",
            )!,
          ),
  );
}

JsonObjectEx _$MessageToJson(Message instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("message_id", instance.messageId);
  write(
      "from",
      instance.from == null
          ? null
          : _$UserToJson(
              instance.from!,
            ));
  write(
      "sender_chat",
      instance.senderChat == null
          ? null
          : _$ChatToJson(
              instance.senderChat!,
            ));
  write("date", instance.date);
  write(
      "chat",
      _$ChatToJson(
        instance.chat,
      ));
  write(
      "forward_from",
      instance.forwardFrom == null
          ? null
          : _$UserToJson(
              instance.forwardFrom!,
            ));
  write(
      "forward_from_chat",
      instance.forwardFromChat == null
          ? null
          : _$ChatToJson(
              instance.forwardFromChat!,
            ));
  write(
      "forward_from_message_id",
      instance.forwardFromMessageId == null
          ? null
          : instance.forwardFromMessageId!);
  write("forward_signature",
      instance.forwardSignature == null ? null : instance.forwardSignature!);
  write("forward_sender_name",
      instance.forwardSenderName == null ? null : instance.forwardSenderName!);
  write("forward_date",
      instance.forwardDate == null ? null : instance.forwardDate!);
  write(
      "reply_to_message",
      instance.replyToMessage == null
          ? null
          : _$MessageToJson(
              instance.replyToMessage!,
            ));
  write(
      "via_bot",
      instance.viaBot == null
          ? null
          : _$UserToJson(
              instance.viaBot!,
            ));
  write("edit_date", instance.editDate == null ? null : instance.editDate!);
  write("media_group_id",
      instance.mediaGroupId == null ? null : instance.mediaGroupId!);
  write("author_signature",
      instance.authorSignature == null ? null : instance.authorSignature!);
  write("text", instance.text == null ? null : instance.text!);
  write(
      "entities",
      instance.entities == null
          ? null
          : instance.entities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "animation",
      instance.animation == null
          ? null
          : _$AnimationToJson(
              instance.animation!,
            ));
  write(
      "audio",
      instance.audio == null
          ? null
          : _$AudioToJson(
              instance.audio!,
            ));
  write(
      "document",
      instance.document == null
          ? null
          : _$DocumentToJson(
              instance.document!,
            ));
  write(
      "photo",
      instance.photo == null
          ? null
          : instance.photo!
              .map(
                (e) => _$PhotoSizeToJson(
                  e,
                ),
              )
              .toList());
  write(
      "sticker",
      instance.sticker == null
          ? null
          : _$StickerToJson(
              instance.sticker!,
            ));
  write(
      "video",
      instance.video == null
          ? null
          : _$VideoToJson(
              instance.video!,
            ));
  write(
      "video_note",
      instance.videoNote == null
          ? null
          : _$VideoNoteToJson(
              instance.videoNote!,
            ));
  write(
      "voice",
      instance.voice == null
          ? null
          : _$VoiceToJson(
              instance.voice!,
            ));
  write("caption", instance.caption == null ? null : instance.caption!);
  write(
      "caption_entities",
      instance.captionEntities == null
          ? null
          : instance.captionEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "contact",
      instance.contact == null
          ? null
          : _$ContactToJson(
              instance.contact!,
            ));
  write(
      "dice",
      instance.dice == null
          ? null
          : _$DiceToJson(
              instance.dice!,
            ));
  write(
      "game",
      instance.game == null
          ? null
          : _$GameToJson(
              instance.game!,
            ));
  write(
      "poll",
      instance.poll == null
          ? null
          : _$PollToJson(
              instance.poll!,
            ));
  write(
      "venue",
      instance.venue == null
          ? null
          : _$VenueToJson(
              instance.venue!,
            ));
  write(
      "location",
      instance.location == null
          ? null
          : _$LocationToJson(
              instance.location!,
            ));
  write(
      "new_chat_members",
      instance.newChatMembers == null
          ? null
          : instance.newChatMembers!
              .map(
                (e) => _$UserToJson(
                  e,
                ),
              )
              .toList());
  write(
      "left_chat_member",
      instance.leftChatMember == null
          ? null
          : _$UserToJson(
              instance.leftChatMember!,
            ));
  write("new_chat_title",
      instance.newChatTitle == null ? null : instance.newChatTitle!);
  write(
      "new_chat_photo",
      instance.newChatPhoto == null
          ? null
          : instance.newChatPhoto!
              .map(
                (e) => _$PhotoSizeToJson(
                  e,
                ),
              )
              .toList());
  write("delete_chat_photo",
      instance.deleteChatPhoto == null ? null : instance.deleteChatPhoto!);
  write("group_chat_created",
      instance.groupChatCreated == null ? null : instance.groupChatCreated!);
  write(
      "supergroup_chat_created",
      instance.supergroupChatCreated == null
          ? null
          : instance.supergroupChatCreated!);
  write(
      "channel_chat_created",
      instance.channelChatCreated == null
          ? null
          : instance.channelChatCreated!);
  write(
      "message_auto_delete_timer_changed",
      instance.messageAutoDeleteTimerChanged == null
          ? null
          : _$MessageAutoDeleteTimerChangedToJson(
              instance.messageAutoDeleteTimerChanged!,
            ));
  write("migrate_to_chat_id",
      instance.migrateToChatId == null ? null : instance.migrateToChatId!);
  write("migrate_from_chat_id",
      instance.migrateFromChatId == null ? null : instance.migrateFromChatId!);
  write(
      "pinned_message",
      instance.pinnedMessage == null
          ? null
          : _$MessageToJson(
              instance.pinnedMessage!,
            ));
  write(
      "invoice",
      instance.invoice == null
          ? null
          : _$InvoiceToJson(
              instance.invoice!,
            ));
  write(
      "successful_payment",
      instance.successfulPayment == null
          ? null
          : _$SuccessfulPaymentToJson(
              instance.successfulPayment!,
            ));
  write("connected_website",
      instance.connectedWebsite == null ? null : instance.connectedWebsite!);
  write(
      "passport_data",
      instance.passportData == null
          ? null
          : _$PassportDataToJson(
              instance.passportData!,
            ));
  write(
      "proximity_alert_triggered",
      instance.proximityAlertTriggered == null
          ? null
          : _$ProximityAlertTriggeredToJson(
              instance.proximityAlertTriggered!,
            ));
  write(
      "voice_chat_scheduled",
      instance.voiceChatScheduled == null
          ? null
          : _$VoiceChatScheduledToJson(
              instance.voiceChatScheduled!,
            ));
  write(
      "voice_chat_started",
      instance.voiceChatStarted == null
          ? null
          : _$VoiceChatStartedToJson(
              instance.voiceChatStarted!,
            ));
  write(
      "voice_chat_ended",
      instance.voiceChatEnded == null
          ? null
          : _$VoiceChatEndedToJson(
              instance.voiceChatEnded!,
            ));
  write(
      "voice_chat_participants_invited",
      instance.voiceChatParticipantsInvited == null
          ? null
          : _$VoiceChatParticipantsInvitedToJson(
              instance.voiceChatParticipantsInvited!,
            ));
  write(
      "reply_markup",
      instance.replyMarkup == null
          ? null
          : _$InlineKeyboardMarkupToJson(
              instance.replyMarkup!,
            ));
  return json;
}

MessageAutoDeleteTimerChanged _$MessageAutoDeleteTimerChangedFromJson(
    JsonObjectEx json) {
  dynamic value;
  return MessageAutoDeleteTimerChanged(
    messageAutoDeleteTime: json.getInteger(
      "message_auto_delete_time",
    )!,
  );
}

JsonObjectEx _$MessageAutoDeleteTimerChangedToJson(
    MessageAutoDeleteTimerChanged instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("message_auto_delete_time", instance.messageAutoDeleteTime);
  return json;
}

MessageEntity _$MessageEntityFromJson(JsonObjectEx json) {
  dynamic value;
  return MessageEntity(
    type: json.getString(
      "type",
    )!,
    offset: json.getInteger(
      "offset",
    )!,
    length: json.getInteger(
      "length",
    )!,
    url: (value = json.getString(
              "url",
            )) ==
            null
        ? null
        : json.getString(
            "url",
          )!,
    user: (value = json.getJsonObject(
              "user",
            )) ==
            null
        ? null
        : _$UserFromJson(
            json.getJsonObject(
              "user",
            )!,
          ),
    language: (value = json.getString(
              "language",
            )) ==
            null
        ? null
        : json.getString(
            "language",
          )!,
  );
}

JsonObjectEx _$MessageEntityToJson(MessageEntity instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("type", instance.type);
  write("offset", instance.offset);
  write("length", instance.length);
  write("url", instance.url == null ? null : instance.url!);
  write(
      "user",
      instance.user == null
          ? null
          : _$UserToJson(
              instance.user!,
            ));
  write("language", instance.language == null ? null : instance.language!);
  return json;
}

MessageId _$MessageIdFromJson(JsonObjectEx json) {
  dynamic value;
  return MessageId(
    messageId: json.getInteger(
      "message_id",
    )!,
  );
}

JsonObjectEx _$MessageIdToJson(MessageId instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("message_id", instance.messageId);
  return json;
}

OrderInfo _$OrderInfoFromJson(JsonObjectEx json) {
  dynamic value;
  return OrderInfo(
    name: (value = json.getString(
              "name",
            )) ==
            null
        ? null
        : json.getString(
            "name",
          )!,
    phoneNumber: (value = json.getString(
              "phone_number",
            )) ==
            null
        ? null
        : json.getString(
            "phone_number",
          )!,
    email: (value = json.getString(
              "email",
            )) ==
            null
        ? null
        : json.getString(
            "email",
          )!,
    shippingAddress: (value = json.getJsonObject(
              "shipping_address",
            )) ==
            null
        ? null
        : _$ShippingAddressFromJson(
            json.getJsonObject(
              "shipping_address",
            )!,
          ),
  );
}

JsonObjectEx _$OrderInfoToJson(OrderInfo instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("name", instance.name == null ? null : instance.name!);
  write("phone_number",
      instance.phoneNumber == null ? null : instance.phoneNumber!);
  write("email", instance.email == null ? null : instance.email!);
  write(
      "shipping_address",
      instance.shippingAddress == null
          ? null
          : _$ShippingAddressToJson(
              instance.shippingAddress!,
            ));
  return json;
}

PhotoSize _$PhotoSizeFromJson(JsonObjectEx json) {
  dynamic value;
  return PhotoSize(
    fileId: json.getString(
      "file_id",
    )!,
    fileUniqueId: json.getString(
      "file_unique_id",
    )!,
    width: json.getInteger(
      "width",
    )!,
    height: json.getInteger(
      "height",
    )!,
    fileSize: (value = json.getInteger(
              "file_size",
            )) ==
            null
        ? null
        : json.getInteger(
            "file_size",
          )!,
  );
}

JsonObjectEx _$PhotoSizeToJson(PhotoSize instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("file_id", instance.fileId);
  write("file_unique_id", instance.fileUniqueId);
  write("width", instance.width);
  write("height", instance.height);
  write("file_size", instance.fileSize == null ? null : instance.fileSize!);
  return json;
}

PassportData _$PassportDataFromJson(JsonObjectEx json) {
  dynamic value;
  return PassportData(
    data: json
        .getJsonArray<JsonObjectEx>(
          "data",
        )!
        .map(
          (e) => _$EncryptedPassportElementFromJson(
            e,
          ),
        )
        .toList(),
    credentials: _$EncryptedCredentialsFromJson(
      json.getJsonObject(
        "credentials",
      )!,
    ),
  );
}

JsonObjectEx _$PassportDataToJson(PassportData instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "data",
      instance.data.map(
            (e) => _$EncryptedPassportElementToJson(
              e,
            ),
          )
          .toList());
  write(
      "credentials",
      _$EncryptedCredentialsToJson(
        instance.credentials,
      ));
  return json;
}

PassportElementErrorDataField _$PassportElementErrorDataFieldFromJson(
    JsonObjectEx json) {
  dynamic value;
  return PassportElementErrorDataField(
    source: json.getString(
      "source",
    )!,
    type: _$EPassportElementErrorTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    message: json.getString(
      "message",
    )!,
    fieldName: json.getString(
      "field_name",
    )!,
    dataHash: json.getString(
      "data_hash",
    )!,
  );
}

JsonObjectEx _$PassportElementErrorDataFieldToJson(
    PassportElementErrorDataField instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("source", instance.source);
  write(
      "type",
      _$EPassportElementErrorTypeToJson(
        instance.type,
      ));
  write("message", instance.message);
  write("field_name", instance.fieldName);
  write("data_hash", instance.dataHash);
  return json;
}

PassportElementErrorFile _$PassportElementErrorFileFromJson(JsonObjectEx json) {
  dynamic value;
  return PassportElementErrorFile(
    source: json.getString(
      "source",
    )!,
    type: _$EPassportElementErrorTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    message: json.getString(
      "message",
    )!,
    fileHash: json.getString(
      "file_hash",
    )!,
  );
}

JsonObjectEx _$PassportElementErrorFileToJson(
    PassportElementErrorFile instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("source", instance.source);
  write(
      "type",
      _$EPassportElementErrorTypeToJson(
        instance.type,
      ));
  write("message", instance.message);
  write("file_hash", instance.fileHash);
  return json;
}

PassportElementErrorFiles _$PassportElementErrorFilesFromJson(
    JsonObjectEx json) {
  dynamic value;
  return PassportElementErrorFiles(
    source: json.getString(
      "source",
    )!,
    type: _$EPassportElementErrorTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    message: json.getString(
      "message",
    )!,
    fileHashes: json.getArray(
      "file_hashes",
    )!,
  );
}

JsonObjectEx _$PassportElementErrorFilesToJson(
    PassportElementErrorFiles instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("source", instance.source);
  write(
      "type",
      _$EPassportElementErrorTypeToJson(
        instance.type,
      ));
  write("message", instance.message);
  write("file_hashes", instance.fileHashes);
  return json;
}

PassportElementErrorFrontSide _$PassportElementErrorFrontSideFromJson(
    JsonObjectEx json) {
  dynamic value;
  return PassportElementErrorFrontSide(
    source: json.getString(
      "source",
    )!,
    type: _$EPassportElementErrorTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    message: json.getString(
      "message",
    )!,
    fileHash: json.getString(
      "file_hash",
    )!,
  );
}

JsonObjectEx _$PassportElementErrorFrontSideToJson(
    PassportElementErrorFrontSide instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("source", instance.source);
  write(
      "type",
      _$EPassportElementErrorTypeToJson(
        instance.type,
      ));
  write("message", instance.message);
  write("file_hash", instance.fileHash);
  return json;
}

PassportElementErrorReverseSide _$PassportElementErrorReverseSideFromJson(
    JsonObjectEx json) {
  dynamic value;
  return PassportElementErrorReverseSide(
    source: json.getString(
      "source",
    )!,
    type: _$EPassportElementErrorTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    message: json.getString(
      "message",
    )!,
    fileHash: json.getString(
      "file_hash",
    )!,
  );
}

JsonObjectEx _$PassportElementErrorReverseSideToJson(
    PassportElementErrorReverseSide instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("source", instance.source);
  write(
      "type",
      _$EPassportElementErrorTypeToJson(
        instance.type,
      ));
  write("message", instance.message);
  write("file_hash", instance.fileHash);
  return json;
}

PassportElementErrorSelfie _$PassportElementErrorSelfieFromJson(
    JsonObjectEx json) {
  dynamic value;
  return PassportElementErrorSelfie(
    source: json.getString(
      "source",
    )!,
    type: _$EPassportElementErrorTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    message: json.getString(
      "message",
    )!,
    fileHash: json.getString(
      "file_hash",
    )!,
  );
}

JsonObjectEx _$PassportElementErrorSelfieToJson(
    PassportElementErrorSelfie instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("source", instance.source);
  write(
      "type",
      _$EPassportElementErrorTypeToJson(
        instance.type,
      ));
  write("message", instance.message);
  write("file_hash", instance.fileHash);
  return json;
}

PassportElementErrorTranslationFile
    _$PassportElementErrorTranslationFileFromJson(JsonObjectEx json) {
  dynamic value;
  return PassportElementErrorTranslationFile(
    source: json.getString(
      "source",
    )!,
    type: _$EPassportElementErrorTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    message: json.getString(
      "message",
    )!,
    fileHash: json.getString(
      "file_hash",
    )!,
  );
}

JsonObjectEx _$PassportElementErrorTranslationFileToJson(
    PassportElementErrorTranslationFile instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("source", instance.source);
  write(
      "type",
      _$EPassportElementErrorTypeToJson(
        instance.type,
      ));
  write("message", instance.message);
  write("file_hash", instance.fileHash);
  return json;
}

PassportElementErrorTranslationFiles
    _$PassportElementErrorTranslationFilesFromJson(JsonObjectEx json) {
  dynamic value;
  return PassportElementErrorTranslationFiles(
    source: json.getString(
      "source",
    )!,
    type: _$EPassportElementErrorTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    message: json.getString(
      "message",
    )!,
    fileHashes: json.getArray(
      "file_hashes",
    )!,
  );
}

JsonObjectEx _$PassportElementErrorTranslationFilesToJson(
    PassportElementErrorTranslationFiles instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("source", instance.source);
  write(
      "type",
      _$EPassportElementErrorTypeToJson(
        instance.type,
      ));
  write("message", instance.message);
  write("file_hashes", instance.fileHashes);
  return json;
}

PassportElementErrorUnspecified _$PassportElementErrorUnspecifiedFromJson(
    JsonObjectEx json) {
  dynamic value;
  return PassportElementErrorUnspecified(
    source: json.getString(
      "source",
    )!,
    type: _$EPassportElementErrorTypeFromJson(
      json.getString(
        "type",
      )!,
    )!,
    message: json.getString(
      "message",
    )!,
    elementHash: json.getString(
      "element_hash",
    )!,
  );
}

JsonObjectEx _$PassportElementErrorUnspecifiedToJson(
    PassportElementErrorUnspecified instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("source", instance.source);
  write(
      "type",
      _$EPassportElementErrorTypeToJson(
        instance.type,
      ));
  write("message", instance.message);
  write("element_hash", instance.elementHash);
  return json;
}

PassportFile _$PassportFileFromJson(JsonObjectEx json) {
  dynamic value;
  return PassportFile(
    fileId: json.getString(
      "file_id",
    )!,
    fileUniqueId: json.getString(
      "file_unique_id",
    )!,
    fileSize: json.getInteger(
      "file_size",
    )!,
    fileDate: json.getInteger(
      "file_date",
    )!,
  );
}

JsonObjectEx _$PassportFileToJson(PassportFile instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("file_id", instance.fileId);
  write("file_unique_id", instance.fileUniqueId);
  write("file_size", instance.fileSize);
  write("file_date", instance.fileDate);
  return json;
}

Poll _$PollFromJson(JsonObjectEx json) {
  dynamic value;
  return Poll(
    id: json.getString(
      "id",
    )!,
    question: json.getString(
      "question",
    )!,
    options: json
        .getJsonArray<JsonObjectEx>(
          "options",
        )!
        .map(
          (e) => _$PollOptionFromJson(
            e,
          ),
        )
        .toList(),
    totalVoterCount: json.getInteger(
      "total_voter_count",
    )!,
    isClosed: json.getBoolean(
      "is_closed",
    )!,
    isAnonymous: json.getBoolean(
      "is_anonymous",
    )!,
    type: json.getString(
      "type",
    )!,
    allowsMultipleAnswers: json.getBoolean(
      "allows_multiple_answers",
    )!,
    correctOptionId: (value = json.getInteger(
              "correct_option_id",
            )) ==
            null
        ? null
        : json.getInteger(
            "correct_option_id",
          )!,
    explanation: (value = json.getString(
              "explanation",
            )) ==
            null
        ? null
        : json.getString(
            "explanation",
          )!,
    explanationEntities: (value = json.getJsonArray(
              "explanation_entities",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "explanation_entities",
            )!
            .map(
              (e) => _$MessageEntityFromJson(
                e,
              ),
            )
            .toList(),
    openPeriod: (value = json.getInteger(
              "open_period",
            )) ==
            null
        ? null
        : json.getInteger(
            "open_period",
          )!,
    closeDate: (value = json.getInteger(
              "close_date",
            )) ==
            null
        ? null
        : json.getInteger(
            "close_date",
          )!,
  );
}

JsonObjectEx _$PollToJson(Poll instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write("question", instance.question);
  write(
      "options",
      instance.options.map(
            (e) => _$PollOptionToJson(
              e,
            ),
          )
          .toList());
  write("total_voter_count", instance.totalVoterCount);
  write("is_closed", instance.isClosed);
  write("is_anonymous", instance.isAnonymous);
  write("type", instance.type);
  write("allows_multiple_answers", instance.allowsMultipleAnswers);
  write("correct_option_id",
      instance.correctOptionId == null ? null : instance.correctOptionId!);
  write("explanation",
      instance.explanation == null ? null : instance.explanation!);
  write(
      "explanation_entities",
      instance.explanationEntities == null
          ? null
          : instance.explanationEntities!
              .map(
                (e) => _$MessageEntityToJson(
                  e,
                ),
              )
              .toList());
  write(
      "open_period", instance.openPeriod == null ? null : instance.openPeriod!);
  write("close_date", instance.closeDate == null ? null : instance.closeDate!);
  return json;
}

PollAnswer _$PollAnswerFromJson(JsonObjectEx json) {
  dynamic value;
  return PollAnswer(
    pollId: json.getString(
      "poll_id",
    )!,
    user: _$UserFromJson(
      json.getJsonObject(
        "user",
      )!,
    ),
    optionIds: json.getArray(
      "option_ids",
    )!,
  );
}

JsonObjectEx _$PollAnswerToJson(PollAnswer instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("poll_id", instance.pollId);
  write(
      "user",
      _$UserToJson(
        instance.user,
      ));
  write("option_ids", instance.optionIds);
  return json;
}

PollOption _$PollOptionFromJson(JsonObjectEx json) {
  dynamic value;
  return PollOption(
    text: json.getString(
      "text",
    )!,
    voterCount: json.getInteger(
      "voter_count",
    )!,
  );
}

JsonObjectEx _$PollOptionToJson(PollOption instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("text", instance.text);
  write("voter_count", instance.voterCount);
  return json;
}

PreCheckoutQuery _$PreCheckoutQueryFromJson(JsonObjectEx json) {
  dynamic value;
  return PreCheckoutQuery(
    id: json.getString(
      "id",
    )!,
    from: _$UserFromJson(
      json.getJsonObject(
        "from",
      )!,
    ),
    currency: json.getString(
      "currency",
    )!,
    totalAmount: json.getInteger(
      "total_amount",
    )!,
    invoicePayload: json.getString(
      "invoice_payload",
    )!,
    shippingOptionId: (value = json.getString(
              "shipping_option_id",
            )) ==
            null
        ? null
        : json.getString(
            "shipping_option_id",
          )!,
    orderInfo: (value = json.getJsonObject(
              "order_info",
            )) ==
            null
        ? null
        : _$OrderInfoFromJson(
            json.getJsonObject(
              "order_info",
            )!,
          ),
  );
}

JsonObjectEx _$PreCheckoutQueryToJson(PreCheckoutQuery instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "from",
      _$UserToJson(
        instance.from,
      ));
  write("currency", instance.currency);
  write("total_amount", instance.totalAmount);
  write("invoice_payload", instance.invoicePayload);
  write("shipping_option_id",
      instance.shippingOptionId == null ? null : instance.shippingOptionId!);
  write(
      "order_info",
      instance.orderInfo == null
          ? null
          : _$OrderInfoToJson(
              instance.orderInfo!,
            ));
  return json;
}

ProximityAlertTriggered _$ProximityAlertTriggeredFromJson(JsonObjectEx json) {
  dynamic value;
  return ProximityAlertTriggered(
    traveler: _$UserFromJson(
      json.getJsonObject(
        "traveler",
      )!,
    ),
    watcher: _$UserFromJson(
      json.getJsonObject(
        "watcher",
      )!,
    ),
    distance: json.getInteger(
      "distance",
    )!,
  );
}

JsonObjectEx _$ProximityAlertTriggeredToJson(ProximityAlertTriggered instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "traveler",
      _$UserToJson(
        instance.traveler,
      ));
  write(
      "watcher",
      _$UserToJson(
        instance.watcher,
      ));
  write("distance", instance.distance);
  return json;
}

ReplyKeyboardMarkup _$ReplyKeyboardMarkupFromJson(JsonObjectEx json) {
  dynamic value;
  return ReplyKeyboardMarkup(
    keyboard: json.getArray(
      "keyboard",
    )!,
    resizeKeyboard: (value = json.getBoolean(
              "resize_keyboard",
            )) ==
            null
        ? null
        : json.getBoolean(
            "resize_keyboard",
          )!,
    oneTimeKeyboard: (value = json.getBoolean(
              "one_time_keyboard",
            )) ==
            null
        ? null
        : json.getBoolean(
            "one_time_keyboard",
          )!,
    inputFieldPlaceholder: (value = json.getString(
              "input_field_placeholder",
            )) ==
            null
        ? null
        : json.getString(
            "input_field_placeholder",
          )!,
    selective: (value = json.getBoolean(
              "selective",
            )) ==
            null
        ? null
        : json.getBoolean(
            "selective",
          )!,
  );
}

JsonObjectEx _$ReplyKeyboardMarkupToJson(ReplyKeyboardMarkup instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("keyboard", instance.keyboard);
  write("resize_keyboard",
      instance.resizeKeyboard == null ? null : instance.resizeKeyboard!);
  write("one_time_keyboard",
      instance.oneTimeKeyboard == null ? null : instance.oneTimeKeyboard!);
  write(
      "input_field_placeholder",
      instance.inputFieldPlaceholder == null
          ? null
          : instance.inputFieldPlaceholder!);
  write("selective", instance.selective == null ? null : instance.selective!);
  return json;
}

ReplyKeyboardRemove _$ReplyKeyboardRemoveFromJson(JsonObjectEx json) {
  dynamic value;
  return ReplyKeyboardRemove(
    removeKeyboard: json.getBoolean(
      "remove_keyboard",
    )!,
    selective: (value = json.getBoolean(
              "selective",
            )) ==
            null
        ? null
        : json.getBoolean(
            "selective",
          )!,
  );
}

JsonObjectEx _$ReplyKeyboardRemoveToJson(ReplyKeyboardRemove instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("remove_keyboard", instance.removeKeyboard);
  write("selective", instance.selective == null ? null : instance.selective!);
  return json;
}

ResponseParameters _$ResponseParametersFromJson(JsonObjectEx json) {
  dynamic value;
  return ResponseParameters(
    migrateToChatId: (value = json.getInteger(
              "migrate_to_chat_id",
            )) ==
            null
        ? null
        : json.getInteger(
            "migrate_to_chat_id",
          )!,
    retryAfter: (value = json.getInteger(
              "retry_after",
            )) ==
            null
        ? null
        : json.getInteger(
            "retry_after",
          )!,
  );
}

JsonObjectEx _$ResponseParametersToJson(ResponseParameters instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("migrate_to_chat_id",
      instance.migrateToChatId == null ? null : instance.migrateToChatId!);
  write(
      "retry_after", instance.retryAfter == null ? null : instance.retryAfter!);
  return json;
}

ShippingAddress _$ShippingAddressFromJson(JsonObjectEx json) {
  dynamic value;
  return ShippingAddress(
    countryCode: json.getString(
      "country_code",
    )!,
    state: json.getString(
      "state",
    )!,
    city: json.getString(
      "city",
    )!,
    streetLine1: json.getString(
      "street_line1",
    )!,
    streetLine2: json.getString(
      "street_line2",
    )!,
    postCode: json.getString(
      "post_code",
    )!,
  );
}

JsonObjectEx _$ShippingAddressToJson(ShippingAddress instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("country_code", instance.countryCode);
  write("state", instance.state);
  write("city", instance.city);
  write("street_line1", instance.streetLine1);
  write("street_line2", instance.streetLine2);
  write("post_code", instance.postCode);
  return json;
}

ShippingOption _$ShippingOptionFromJson(JsonObjectEx json) {
  dynamic value;
  return ShippingOption(
    id: json.getString(
      "id",
    )!,
    title: json.getString(
      "title",
    )!,
    prices: json
        .getJsonArray<JsonObjectEx>(
          "prices",
        )!
        .map(
          (e) => _$LabeledPriceFromJson(
            e,
          ),
        )
        .toList(),
  );
}

JsonObjectEx _$ShippingOptionToJson(ShippingOption instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write("title", instance.title);
  write(
      "prices",
      instance.prices.map(
            (e) => _$LabeledPriceToJson(
              e,
            ),
          )
          .toList());
  return json;
}

ShippingQuery _$ShippingQueryFromJson(JsonObjectEx json) {
  dynamic value;
  return ShippingQuery(
    id: json.getString(
      "id",
    )!,
    from: _$UserFromJson(
      json.getJsonObject(
        "from",
      )!,
    ),
    invoicePayload: json.getString(
      "invoice_payload",
    )!,
    shippingAddress: _$ShippingAddressFromJson(
      json.getJsonObject(
        "shipping_address",
      )!,
    ),
  );
}

JsonObjectEx _$ShippingQueryToJson(ShippingQuery instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write(
      "from",
      _$UserToJson(
        instance.from,
      ));
  write("invoice_payload", instance.invoicePayload);
  write(
      "shipping_address",
      _$ShippingAddressToJson(
        instance.shippingAddress,
      ));
  return json;
}

Sticker _$StickerFromJson(JsonObjectEx json) {
  dynamic value;
  return Sticker(
    fileId: json.getString(
      "file_id",
    )!,
    fileUniqueId: json.getString(
      "file_unique_id",
    )!,
    width: json.getInteger(
      "width",
    )!,
    height: json.getInteger(
      "height",
    )!,
    isAnimated: json.getBoolean(
      "is_animated",
    )!,
    thumb: (value = json.getJsonObject(
              "thumb",
            )) ==
            null
        ? null
        : _$PhotoSizeFromJson(
            json.getJsonObject(
              "thumb",
            )!,
          ),
    emoji: (value = json.getString(
              "emoji",
            )) ==
            null
        ? null
        : json.getString(
            "emoji",
          )!,
    setName: (value = json.getString(
              "set_name",
            )) ==
            null
        ? null
        : json.getString(
            "set_name",
          )!,
    maskPosition: (value = json.getJsonObject(
              "mask_position",
            )) ==
            null
        ? null
        : _$MaskPositionFromJson(
            json.getJsonObject(
              "mask_position",
            )!,
          ),
    fileSize: (value = json.getInteger(
              "file_size",
            )) ==
            null
        ? null
        : json.getInteger(
            "file_size",
          )!,
  );
}

JsonObjectEx _$StickerToJson(Sticker instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("file_id", instance.fileId);
  write("file_unique_id", instance.fileUniqueId);
  write("width", instance.width);
  write("height", instance.height);
  write("is_animated", instance.isAnimated);
  write(
      "thumb",
      instance.thumb == null
          ? null
          : _$PhotoSizeToJson(
              instance.thumb!,
            ));
  write("emoji", instance.emoji == null ? null : instance.emoji!);
  write("set_name", instance.setName == null ? null : instance.setName!);
  write(
      "mask_position",
      instance.maskPosition == null
          ? null
          : _$MaskPositionToJson(
              instance.maskPosition!,
            ));
  write("file_size", instance.fileSize == null ? null : instance.fileSize!);
  return json;
}

StickerSet _$StickerSetFromJson(JsonObjectEx json) {
  dynamic value;
  return StickerSet(
    name: json.getString(
      "name",
    )!,
    title: json.getString(
      "title",
    )!,
    isAnimated: json.getBoolean(
      "is_animated",
    )!,
    containsMasks: json.getBoolean(
      "contains_masks",
    )!,
    stickers: json
        .getJsonArray<JsonObjectEx>(
          "stickers",
        )!
        .map(
          (e) => _$StickerFromJson(
            e,
          ),
        )
        .toList(),
    thumb: (value = json.getJsonObject(
              "thumb",
            )) ==
            null
        ? null
        : _$PhotoSizeFromJson(
            json.getJsonObject(
              "thumb",
            )!,
          ),
  );
}

JsonObjectEx _$StickerSetToJson(StickerSet instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("name", instance.name);
  write("title", instance.title);
  write("is_animated", instance.isAnimated);
  write("contains_masks", instance.containsMasks);
  write(
      "stickers",
      instance.stickers.map(
            (e) => _$StickerToJson(
              e,
            ),
          )
          .toList());
  write(
      "thumb",
      instance.thumb == null
          ? null
          : _$PhotoSizeToJson(
              instance.thumb!,
            ));
  return json;
}

SuccessfulPayment _$SuccessfulPaymentFromJson(JsonObjectEx json) {
  dynamic value;
  return SuccessfulPayment(
    currency: json.getString(
      "currency",
    )!,
    totalAmount: json.getInteger(
      "total_amount",
    )!,
    invoicePayload: json.getString(
      "invoice_payload",
    )!,
    shippingOptionId: (value = json.getString(
              "shipping_option_id",
            )) ==
            null
        ? null
        : json.getString(
            "shipping_option_id",
          )!,
    orderInfo: (value = json.getJsonObject(
              "order_info",
            )) ==
            null
        ? null
        : _$OrderInfoFromJson(
            json.getJsonObject(
              "order_info",
            )!,
          ),
    telegramPaymentChargeId: json.getString(
      "telegram_payment_charge_id",
    )!,
    providerPaymentChargeId: json.getString(
      "provider_payment_charge_id",
    )!,
  );
}

JsonObjectEx _$SuccessfulPaymentToJson(SuccessfulPayment instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("currency", instance.currency);
  write("total_amount", instance.totalAmount);
  write("invoice_payload", instance.invoicePayload);
  write("shipping_option_id",
      instance.shippingOptionId == null ? null : instance.shippingOptionId!);
  write(
      "order_info",
      instance.orderInfo == null
          ? null
          : _$OrderInfoToJson(
              instance.orderInfo!,
            ));
  write("telegram_payment_charge_id", instance.telegramPaymentChargeId);
  write("provider_payment_charge_id", instance.providerPaymentChargeId);
  return json;
}

Update _$UpdateFromJson(JsonObjectEx json) {
  dynamic value;
  return Update(
    updateId: json.getInteger(
      "update_id",
    )!,
    message: (value = json.getJsonObject(
              "message",
            )) ==
            null
        ? null
        : _$MessageFromJson(
            json.getJsonObject(
              "message",
            )!,
          ),
    editedMessage: (value = json.getJsonObject(
              "edited_message",
            )) ==
            null
        ? null
        : _$MessageFromJson(
            json.getJsonObject(
              "edited_message",
            )!,
          ),
    channelPost: (value = json.getJsonObject(
              "channel_post",
            )) ==
            null
        ? null
        : _$MessageFromJson(
            json.getJsonObject(
              "channel_post",
            )!,
          ),
    editedChannelPost: (value = json.getJsonObject(
              "edited_channel_post",
            )) ==
            null
        ? null
        : _$MessageFromJson(
            json.getJsonObject(
              "edited_channel_post",
            )!,
          ),
    inlineQuery: (value = json.getJsonObject(
              "inline_query",
            )) ==
            null
        ? null
        : _$InlineQueryFromJson(
            json.getJsonObject(
              "inline_query",
            )!,
          ),
    chosenInlineResult: (value = json.getJsonObject(
              "chosen_inline_result",
            )) ==
            null
        ? null
        : _$ChosenInlineResultFromJson(
            json.getJsonObject(
              "chosen_inline_result",
            )!,
          ),
    callbackQuery: (value = json.getJsonObject(
              "callback_query",
            )) ==
            null
        ? null
        : _$CallbackQueryFromJson(
            json.getJsonObject(
              "callback_query",
            )!,
          ),
    shippingQuery: (value = json.getJsonObject(
              "shipping_query",
            )) ==
            null
        ? null
        : _$ShippingQueryFromJson(
            json.getJsonObject(
              "shipping_query",
            )!,
          ),
    preCheckoutQuery: (value = json.getJsonObject(
              "pre_checkout_query",
            )) ==
            null
        ? null
        : _$PreCheckoutQueryFromJson(
            json.getJsonObject(
              "pre_checkout_query",
            )!,
          ),
    poll: (value = json.getJsonObject(
              "poll",
            )) ==
            null
        ? null
        : _$PollFromJson(
            json.getJsonObject(
              "poll",
            )!,
          ),
    pollAnswer: (value = json.getJsonObject(
              "poll_answer",
            )) ==
            null
        ? null
        : _$PollAnswerFromJson(
            json.getJsonObject(
              "poll_answer",
            )!,
          ),
    myChatMember: (value = json.getJsonObject(
              "my_chat_member",
            )) ==
            null
        ? null
        : _$ChatMemberUpdatedFromJson(
            json.getJsonObject(
              "my_chat_member",
            )!,
          ),
    chatMember: (value = json.getJsonObject(
              "chat_member",
            )) ==
            null
        ? null
        : _$ChatMemberUpdatedFromJson(
            json.getJsonObject(
              "chat_member",
            )!,
          ),
    chatJoinRequest: (value = json.getJsonObject(
              "chat_join_request",
            )) ==
            null
        ? null
        : _$ChatMemberUpdatedFromJson(
            json.getJsonObject(
              "chat_join_request",
            )!,
          ),
  );
}

JsonObjectEx _$UpdateToJson(Update instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("update_id", instance.updateId);
  write(
      "message",
      instance.message == null
          ? null
          : _$MessageToJson(
              instance.message!,
            ));
  write(
      "edited_message",
      instance.editedMessage == null
          ? null
          : _$MessageToJson(
              instance.editedMessage!,
            ));
  write(
      "channel_post",
      instance.channelPost == null
          ? null
          : _$MessageToJson(
              instance.channelPost!,
            ));
  write(
      "edited_channel_post",
      instance.editedChannelPost == null
          ? null
          : _$MessageToJson(
              instance.editedChannelPost!,
            ));
  write(
      "inline_query",
      instance.inlineQuery == null
          ? null
          : _$InlineQueryToJson(
              instance.inlineQuery!,
            ));
  write(
      "chosen_inline_result",
      instance.chosenInlineResult == null
          ? null
          : _$ChosenInlineResultToJson(
              instance.chosenInlineResult!,
            ));
  write(
      "callback_query",
      instance.callbackQuery == null
          ? null
          : _$CallbackQueryToJson(
              instance.callbackQuery!,
            ));
  write(
      "shipping_query",
      instance.shippingQuery == null
          ? null
          : _$ShippingQueryToJson(
              instance.shippingQuery!,
            ));
  write(
      "pre_checkout_query",
      instance.preCheckoutQuery == null
          ? null
          : _$PreCheckoutQueryToJson(
              instance.preCheckoutQuery!,
            ));
  write(
      "poll",
      instance.poll == null
          ? null
          : _$PollToJson(
              instance.poll!,
            ));
  write(
      "poll_answer",
      instance.pollAnswer == null
          ? null
          : _$PollAnswerToJson(
              instance.pollAnswer!,
            ));
  write(
      "my_chat_member",
      instance.myChatMember == null
          ? null
          : _$ChatMemberUpdatedToJson(
              instance.myChatMember!,
            ));
  write(
      "chat_member",
      instance.chatMember == null
          ? null
          : _$ChatMemberUpdatedToJson(
              instance.chatMember!,
            ));
  write(
      "chat_join_request",
      instance.chatJoinRequest == null
          ? null
          : _$ChatMemberUpdatedToJson(
              instance.chatJoinRequest!,
            ));
  return json;
}

User _$UserFromJson(JsonObjectEx json) {
  dynamic value;
  return User(
    id: json.getInteger(
      "id",
    )!,
    isBot: json.getBoolean(
      "is_bot",
    )!,
    firstName: json.getString(
      "first_name",
    )!,
    lastName: (value = json.getString(
              "last_name",
            )) ==
            null
        ? null
        : json.getString(
            "last_name",
          )!,
    username: (value = json.getString(
              "username",
            )) ==
            null
        ? null
        : json.getString(
            "username",
          )!,
    languageCode: (value = json.getString(
              "language_code",
            )) ==
            null
        ? null
        : json.getString(
            "language_code",
          )!,
    canJoinGroups: (value = json.getBoolean(
              "can_join_groups",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_join_groups",
          )!,
    canReadAllGroupMessages: (value = json.getBoolean(
              "can_read_all_group_messages",
            )) ==
            null
        ? null
        : json.getBoolean(
            "can_read_all_group_messages",
          )!,
    supportsInlineQueries: (value = json.getBoolean(
              "supports_inline_queries",
            )) ==
            null
        ? null
        : json.getBoolean(
            "supports_inline_queries",
          )!,
  );
}

JsonObjectEx _$UserToJson(User instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("id", instance.id);
  write("is_bot", instance.isBot);
  write("first_name", instance.firstName);
  write("last_name", instance.lastName == null ? null : instance.lastName!);
  write("username", instance.username == null ? null : instance.username!);
  write("language_code",
      instance.languageCode == null ? null : instance.languageCode!);
  write("can_join_groups",
      instance.canJoinGroups == null ? null : instance.canJoinGroups!);
  write(
      "can_read_all_group_messages",
      instance.canReadAllGroupMessages == null
          ? null
          : instance.canReadAllGroupMessages!);
  write(
      "supports_inline_queries",
      instance.supportsInlineQueries == null
          ? null
          : instance.supportsInlineQueries!);
  return json;
}

UserProfilePhotos _$UserProfilePhotosFromJson(JsonObjectEx json) {
  dynamic value;
  return UserProfilePhotos(
    totalCount: json.getInteger(
      "total_count",
    )!,
    photos: json.getArray(
      "photos",
    )!,
  );
}

JsonObjectEx _$UserProfilePhotosToJson(UserProfilePhotos instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("total_count", instance.totalCount);
  write("photos", instance.photos);
  return json;
}

Venue _$VenueFromJson(JsonObjectEx json) {
  dynamic value;
  return Venue(
    location: _$LocationFromJson(
      json.getJsonObject(
        "location",
      )!,
    ),
    title: json.getString(
      "title",
    )!,
    address: json.getString(
      "address",
    )!,
    foursquareId: (value = json.getString(
              "foursquare_id",
            )) ==
            null
        ? null
        : json.getString(
            "foursquare_id",
          )!,
    foursquareType: (value = json.getString(
              "foursquare_type",
            )) ==
            null
        ? null
        : json.getString(
            "foursquare_type",
          )!,
    googlePlaceId: (value = json.getString(
              "google_place_id",
            )) ==
            null
        ? null
        : json.getString(
            "google_place_id",
          )!,
    googlePlaceType: (value = json.getString(
              "google_place_type",
            )) ==
            null
        ? null
        : json.getString(
            "google_place_type",
          )!,
  );
}

JsonObjectEx _$VenueToJson(Venue instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "location",
      _$LocationToJson(
        instance.location,
      ));
  write("title", instance.title);
  write("address", instance.address);
  write("foursquare_id",
      instance.foursquareId == null ? null : instance.foursquareId!);
  write("foursquare_type",
      instance.foursquareType == null ? null : instance.foursquareType!);
  write("google_place_id",
      instance.googlePlaceId == null ? null : instance.googlePlaceId!);
  write("google_place_type",
      instance.googlePlaceType == null ? null : instance.googlePlaceType!);
  return json;
}

Video _$VideoFromJson(JsonObjectEx json) {
  dynamic value;
  return Video(
    fileId: json.getString(
      "file_id",
    )!,
    fileUniqueId: json.getString(
      "file_unique_id",
    )!,
    width: json.getInteger(
      "width",
    )!,
    height: json.getInteger(
      "height",
    )!,
    duration: json.getInteger(
      "duration",
    )!,
    thumb: (value = json.getJsonObject(
              "thumb",
            )) ==
            null
        ? null
        : _$PhotoSizeFromJson(
            json.getJsonObject(
              "thumb",
            )!,
          ),
    fileName: (value = json.getString(
              "file_name",
            )) ==
            null
        ? null
        : json.getString(
            "file_name",
          )!,
    mimeType: (value = json.getString(
              "mime_type",
            )) ==
            null
        ? null
        : json.getString(
            "mime_type",
          )!,
    fileSize: (value = json.getInteger(
              "file_size",
            )) ==
            null
        ? null
        : json.getInteger(
            "file_size",
          )!,
  );
}

JsonObjectEx _$VideoToJson(Video instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("file_id", instance.fileId);
  write("file_unique_id", instance.fileUniqueId);
  write("width", instance.width);
  write("height", instance.height);
  write("duration", instance.duration);
  write(
      "thumb",
      instance.thumb == null
          ? null
          : _$PhotoSizeToJson(
              instance.thumb!,
            ));
  write("file_name", instance.fileName == null ? null : instance.fileName!);
  write("mime_type", instance.mimeType == null ? null : instance.mimeType!);
  write("file_size", instance.fileSize == null ? null : instance.fileSize!);
  return json;
}

VideoNote _$VideoNoteFromJson(JsonObjectEx json) {
  dynamic value;
  return VideoNote(
    fileId: json.getString(
      "file_id",
    )!,
    fileUniqueId: json.getString(
      "file_unique_id",
    )!,
    length: json.getInteger(
      "length",
    )!,
    duration: json.getInteger(
      "duration",
    )!,
    thumb: (value = json.getJsonObject(
              "thumb",
            )) ==
            null
        ? null
        : _$PhotoSizeFromJson(
            json.getJsonObject(
              "thumb",
            )!,
          ),
    fileSize: (value = json.getInteger(
              "file_size",
            )) ==
            null
        ? null
        : json.getInteger(
            "file_size",
          )!,
  );
}

JsonObjectEx _$VideoNoteToJson(VideoNote instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("file_id", instance.fileId);
  write("file_unique_id", instance.fileUniqueId);
  write("length", instance.length);
  write("duration", instance.duration);
  write(
      "thumb",
      instance.thumb == null
          ? null
          : _$PhotoSizeToJson(
              instance.thumb!,
            ));
  write("file_size", instance.fileSize == null ? null : instance.fileSize!);
  return json;
}

Voice _$VoiceFromJson(JsonObjectEx json) {
  dynamic value;
  return Voice(
    fileId: json.getString(
      "file_id",
    )!,
    fileUniqueId: json.getString(
      "file_unique_id",
    )!,
    duration: json.getInteger(
      "duration",
    )!,
    mimeType: (value = json.getString(
              "mime_type",
            )) ==
            null
        ? null
        : json.getString(
            "mime_type",
          )!,
    fileSize: (value = json.getInteger(
              "file_size",
            )) ==
            null
        ? null
        : json.getInteger(
            "file_size",
          )!,
  );
}

JsonObjectEx _$VoiceToJson(Voice instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("file_id", instance.fileId);
  write("file_unique_id", instance.fileUniqueId);
  write("duration", instance.duration);
  write("mime_type", instance.mimeType == null ? null : instance.mimeType!);
  write("file_size", instance.fileSize == null ? null : instance.fileSize!);
  return json;
}

VoiceChatEnded _$VoiceChatEndedFromJson(JsonObjectEx json) {
  dynamic value;
  return VoiceChatEnded(
    duration: json.getInteger(
      "duration",
    )!,
  );
}

JsonObjectEx _$VoiceChatEndedToJson(VoiceChatEnded instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("duration", instance.duration);
  return json;
}

VoiceChatParticipantsInvited _$VoiceChatParticipantsInvitedFromJson(
    JsonObjectEx json) {
  dynamic value;
  return VoiceChatParticipantsInvited(
    users: (value = json.getJsonArray(
              "users",
            )) ==
            null
        ? null
        : json
            .getJsonArray<JsonObjectEx>(
              "users",
            )!
            .map(
              (e) => _$UserFromJson(
                e,
              ),
            )
            .toList(),
  );
}

JsonObjectEx _$VoiceChatParticipantsInvitedToJson(
    VoiceChatParticipantsInvited instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write(
      "users",
      instance.users == null
          ? null
          : instance.users!
              .map(
                (e) => _$UserToJson(
                  e,
                ),
              )
              .toList());
  return json;
}

VoiceChatScheduled _$VoiceChatScheduledFromJson(JsonObjectEx json) {
  dynamic value;
  return VoiceChatScheduled(
    startDate: json.getInteger(
      "start_date",
    )!,
  );
}

JsonObjectEx _$VoiceChatScheduledToJson(VoiceChatScheduled instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("start_date", instance.startDate);
  return json;
}

VoiceChatStarted _$VoiceChatStartedFromJson(JsonObjectEx json) {
  dynamic value;
  return VoiceChatStarted();
}

JsonObjectEx _$VoiceChatStartedToJson(VoiceChatStarted instance) {
  final json = JsonObjectEx.empty();
  return json;
}

WebhookInfo _$WebhookInfoFromJson(JsonObjectEx json) {
  dynamic value;
  return WebhookInfo(
    url: json.getString(
      "url",
    )!,
    hasCustomCertificate: json.getBoolean(
      "has_custom_certificate",
    )!,
    pendingUpdateCount: json.getInteger(
      "pending_update_count",
    )!,
    ipAddress: (value = json.getString(
              "ip_address",
            )) ==
            null
        ? null
        : json.getString(
            "ip_address",
          )!,
    lastErrorDate: (value = json.getInteger(
              "last_error_date",
            )) ==
            null
        ? null
        : json.getInteger(
            "last_error_date",
          )!,
    lastErrorMessage: (value = json.getString(
              "last_error_message",
            )) ==
            null
        ? null
        : json.getString(
            "last_error_message",
          )!,
    maxConnections: (value = json.getInteger(
              "max_connections",
            )) ==
            null
        ? null
        : json.getInteger(
            "max_connections",
          )!,
    allowedUpdates: (value = json.getArray(
              "allowed_updates",
            )) ==
            null
        ? null
        : json.getArray(
            "allowed_updates",
          )!,
  );
}

JsonObjectEx _$WebhookInfoToJson(WebhookInfo instance) {
  final json = JsonObjectEx.empty();
  void write(String key, dynamic value) {
    if (value != null) json.put(key, value);
  }

  write("url", instance.url);
  write("has_custom_certificate", instance.hasCustomCertificate);
  write("pending_update_count", instance.pendingUpdateCount);
  write("ip_address", instance.ipAddress == null ? null : instance.ipAddress!);
  write("last_error_date",
      instance.lastErrorDate == null ? null : instance.lastErrorDate!);
  write("last_error_message",
      instance.lastErrorMessage == null ? null : instance.lastErrorMessage!);
  write("max_connections",
      instance.maxConnections == null ? null : instance.maxConnections!);
  write("allowed_updates",
      instance.allowedUpdates == null ? null : instance.allowedUpdates!);
  return json;
}
