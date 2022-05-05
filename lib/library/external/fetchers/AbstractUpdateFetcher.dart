part of truecollaboration.telegram_bot;

abstract class AbstractUpdateFetcher {
  final StreamController<Update> _updateStreamController = new StreamController.broadcast();

  AbstractUpdateFetcher();

  /// When [update] is added to stream.
  Stream<Update> onUpdate() => _updateStreamController.stream;

  void setInstance(TelegramBot instance);
  
  bool get isRunning;

  /// Starts fetching updates.
  Future<void> start();

  /// Stops fetching updates.
  Future<void> stop();

  /// Add [update] to the stream.
  @protected
  void emitUpdate(Update update) => _updateStreamController.add(update);
}
