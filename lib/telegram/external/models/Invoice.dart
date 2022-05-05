part of truecollaboration.telegram_bot.models;

/// This object contains basic information about an invoice.
///
/// https://core.telegram.org/bots/api#invoice
@JsonSerializableEx(fieldRename: FieldRename.snake)
class Invoice extends ITelegramModel {
  String title;
  String description;
  String startParameter;
  String currency;
  int totalAmount;
  Invoice({
    required this.title,
    required this.description,
    required this.startParameter,
    required this.currency,
    required this.totalAmount,
  });
  
  factory Invoice.fromJson(JsonObjectEx json) => _$InvoiceFromJson(json);
  JsonObjectEx toJson() => _$InvoiceToJson(this);
}