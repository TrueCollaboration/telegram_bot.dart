part of truecollaboration.telegram_bot;

class TelegramError extends RequestApiError {
  TelegramError({
    required int code,
    required String message,
    Object? error,
    StackTrace? stackTrace
  }) : super(
    code: code,
    message: message,
    error: error,
    stackTrace: stackTrace,
  );
  
  @override
  PrettyPrint toPrettyPrint() {
    var pp = new PrettyPrint(title: "TelegramException");
    pp.append(super.toPrettyPrint());
    return pp;
  }

}