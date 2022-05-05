part of truecollaboration.telegram_bot.models;

/// Contains information about the current status of a webhook.
///
/// https://core.telegram.org/bots/api#webhookinfo
@JsonSerializableEx(fieldRename: FieldRename.snake)
class WebhookInfo extends ITelegramModel {
  String url;
  bool hasCustomCertificate;
  int pendingUpdateCount;
  String? ipAddress;
  int? lastErrorDate;
  String? lastErrorMessage;
  int? maxConnections;
  List<String>? allowedUpdates;

  WebhookInfo({
    required this.url,
    required this.hasCustomCertificate,
    required this.pendingUpdateCount,
    this.ipAddress,
    this.lastErrorDate,
    this.lastErrorMessage,
    this.maxConnections,
    this.allowedUpdates,
  });
  
  factory WebhookInfo.fromJson(JsonObjectEx json) => _$WebhookInfoFromJson(json);
  JsonObjectEx toJson() => _$WebhookInfoToJson(this);
}
