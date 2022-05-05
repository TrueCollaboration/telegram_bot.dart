part of truecollaboration.telegram_bot.models;

/// Represents a location to which a chat is connected.
///
/// https://core.telegram.org/bots/api#chatlocation
@JsonSerializableEx(fieldRename: FieldRename.snake)
class ChatLocation extends ITelegramModel {
  Location location;
  String address;
  ChatLocation({
    required this.location,
    required this.address,
  });
  
  factory ChatLocation.fromJson(JsonObjectEx json) => _$ChatLocationFromJson(json);
  JsonObjectEx toJson() => _$ChatLocationToJson(this);
}