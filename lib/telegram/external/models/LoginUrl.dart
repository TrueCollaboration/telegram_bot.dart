part of truecollaboration.telegram_bot.models;

/// This object represents a parameter of the inline keyboard button used to automatically authorize a user.
/// Serves as a great replacement for the [Telegram Login Widget] when the user is coming from Telegram.
/// All the user needs to do is tap/click a button and confirm that they want to log in.
///
/// Telegram apps support these buttons as of [version 5.7].
///
/// https://core.telegram.org/bots/api#loginurl
///
/// [Telegram Login Widget]: https://core.telegram.org/widgets/login
/// [version 5.7]: https://telegram.org/blog/privacy-discussions-web-bots#meet-seamless-web-bots
@JsonSerializableEx(fieldRename: FieldRename.snake)
class LoginUrl extends ITelegramModel {
  String url;
  String? forwardText;
  String? botUsername;
  bool? requestWriteAccess;
  LoginUrl({
    required this.url,
    this.forwardText,
    this.botUsername,
    this.requestWriteAccess,
  });
  
  factory LoginUrl.fromJson(JsonObjectEx json) => _$LoginUrlFromJson(json);
  JsonObjectEx toJson() => _$LoginUrlToJson(this);
}
