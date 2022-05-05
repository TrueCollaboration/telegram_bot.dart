part of truecollaboration.telegram_bot.models;

/// Describes actions that a non-administrator user is allowed to take in a chat.
///
/// https://core.telegram.org/bots/api#chatpermissions
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatPermissions extends ITelegramModel {
  bool? canSendMessages;
  bool? canSendMediaMessages;
  bool? canSendPolls;
  bool? canSendOtherMessages;
  bool? canAddWebPagePreviews;
  bool? canChangeInfo;
  bool? canInviteUsers;
  bool? canPinMessages;
  ChatPermissions({
    this.canSendMessages,
    this.canSendMediaMessages,
    this.canSendPolls,
    this.canSendOtherMessages,
    this.canAddWebPagePreviews,
    this.canChangeInfo,
    this.canInviteUsers,
    this.canPinMessages,
  });
  
  factory ChatPermissions.fromJson(JsonObjectEx json) => _$ChatPermissionsFromJson(json);
  JsonObjectEx toJson() => _$ChatPermissionsToJson(this);
}
