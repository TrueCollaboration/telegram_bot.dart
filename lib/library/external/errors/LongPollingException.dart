part of truecollaboration.telegram_bot;

class LongPollingException implements Exception {
  final String cause;
  LongPollingException(this.cause);
  
  @override
  String toString() => 'LongPollingException: $cause';
}