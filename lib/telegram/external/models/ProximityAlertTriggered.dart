part of truecollaboration.telegram_bot.models;

/// This object represents the content of a service message,
/// sent whenever a user in the chat triggers a proximity alert set by another user.
///
/// https://core.telegram.org/bots/api#proximityalerttriggered
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ProximityAlertTriggered extends ITelegramModel {
  User traveler;
  User watcher;
  int distance;
  ProximityAlertTriggered({
    required this.traveler,
    required this.watcher,
    required this.distance,
  });
  
  factory ProximityAlertTriggered.fromJson(JsonObjectEx json) => _$ProximityAlertTriggeredFromJson(json);
  JsonObjectEx toJson() => _$ProximityAlertTriggeredToJson(this);
}
