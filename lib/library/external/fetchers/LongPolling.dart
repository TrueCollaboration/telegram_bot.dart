part of truecollaboration.telegram_bot;

class LongPolling extends AbstractUpdateFetcher {
  static const int MAX_TIMEOUT = 50;


  late final TelegramBot instance;
  
  int offset;

  int limit;

  int timeout;
  
  List<String>? allowedUpdates;

  /// Setup long polling
  ///
  /// Throws [LongPollingException] if [limit] is less than 1 or greater than 100
  /// or [timeout] is greater than 50
  LongPolling({
    this.offset = 0,
    this.limit = 100,
    this.timeout = 30,
    this.allowedUpdates,
  }) {
    if (limit > 100 || limit < 1) {
      throw LongPollingException('Limit must between 1 and 100.');
    }
    if (timeout > MAX_TIMEOUT) {
      throw LongPollingException('Timeout may not greater than $MAX_TIMEOUT.');
    }
  }


  @override
  void setInstance(TelegramBot instance) {
    this.instance = instance;
  }

  @override
  bool isRunning = false;

  @override
  Future<void> start() {
    if(isRunning)
      throw LongPollingException("Already running");
    isRunning = true;
    return _runnable();
  }

  @override
  Future<void> stop() {
    if (isRunning) isRunning = false;
    return Future.value();
  }


  Future<void> _runnable() async {
    while(isRunning) {
      final either = await instance.getUpdates(
        offset: offset,
        limit: limit,
        timeout: timeout,
        allowedUpdates: allowedUpdates,

        timeouts: NetworkTimeouts(
          connection: Duration(seconds: timeout + 5),
        ),
      );

      // debugger(when: either.isLeft);
      if(either.isLeft) {
        await Future.delayed(const Duration(seconds: 3));
        continue;
      }
      //   final wrappedError = either.left as AppProcessError;
      //   final error = wrappedError.error;
      //   debugger();
      //   if(wrappedError is RequestNetworkError) {
      //     if(error is DioError) {
            
      //     }
      //   }
      //   isRunning = false;
      //   return;
      // }

      final result = either.right;
      if (result.isNotEmpty) {
        for (final update in result) {
          emitUpdate(update);
          offset = update.updateId + 1;
        }
      }
    }
    return Future.value();
  }
}
