part of truecollaboration.telegram_bot.models;

/// This object represents a file ready to be downloaded.
/// The file can be downloaded via the link [https://api.telegram.org/file/bot<token>/<filePath>].
/// It is guaranteed that the link will be valid for at least 1 hour.
/// When the link expires, a new one can be requested by calling [getFile].
///
/// *Maximum file size to download is 20 MB*
///
/// https://core.telegram.org/bots/api#file
///
/// [getFile]: https://core.telegram.org/bots/api#getfile
@JsonSerializableEx(fieldRename: FieldRename.snake)
class File extends ITelegramModel {
  String fileId;
  String fileUniqueId;
  int? fileSize;
  String? filePath;
  File({
    required this.fileId,
    required this.fileUniqueId,
    this.fileSize,
    this.filePath,
  });
  
  factory File.fromJson(JsonObjectEx json) => _$FileFromJson(json);
  JsonObjectEx toJson() => _$FileToJson(this);
}