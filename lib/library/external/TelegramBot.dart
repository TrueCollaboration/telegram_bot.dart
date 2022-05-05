part of truecollaboration.telegram_bot;

abstract class TelegramBot {
  static const String TAG = "TelegramBot";
  static const String URL_API = "api.telegram.org";

  static String debugProxy = "";

  static const NetworkTimeouts DEFAULT_TIMEOUTS = NetworkTimeouts(
    connection: Duration(seconds: 10),
    response: Duration(seconds: 30),
    receiveTotal: Duration(minutes: 2),
    idle: Duration(seconds: 10),
    closing: Duration(seconds: 5),
  );

  static const Map<String, String> DEFAULT_HEADERS = {};

  static Dio _defaultGetDioCallback() {
    final dio = new Dio();
    
    assert(() {
      if(debugProxy.isNotEmpty) {
        (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
          client.badCertificateCallback = (X509Certificate cert, String host, int port) {
            return true;
          };
          client.findProxy = (uri) => debugProxy;
        };
      } return true;
    }());
    return dio;
  }

  factory TelegramBot({
    required String token,
    required AbstractUpdateFetcher fetcher,
    OnGetDioFunction getDioCallback = _defaultGetDioCallback,
    NetworkTimeouts timeouts = TelegramBot.DEFAULT_TIMEOUTS,
    bool syncStream = false,
  }) => _TelegramBot(
    token: token,
    fetcher: fetcher,
    getDioCallback: getDioCallback,
    timeouts: timeouts,
    syncStream: syncStream,
  );

  String get token;

  AbstractUpdateFetcher get fetcher;

  late OnGetDioFunction getDioCallback;

  late NetworkTimeouts timeouts;

  bool get isRunning;

  Future<void> start();

  Future<void> stop();

  
  Stream<TelegramMessage> onMessage();

  Stream<TelegramMessage> onEditedMessage();

  Stream<TelegramMessage> onChannelPost();

  Stream<TelegramMessage> onEditedChannelPost();

  Stream<InlineQuery> onInlineQuery();

  Stream<ChosenInlineResult> onChosenInlineResult();

  Stream<CallbackQuery> onCallbackQuery();

  Stream<ShippingQuery> onShippingQuery();

  Stream<PreCheckoutQuery> onPreCheckoutQuery();

  Stream<Poll> onPoll();

  Stream<PollAnswer> onPollAnswer();

  Stream<ChatMemberUpdated> onMyChatMember();

  Stream<ChatMemberUpdated> onChatMember();
  
  Stream<ChatMemberUpdated> onChatJoinRequest();

  Future<Either<IProcessResult, List<Update>>> getUpdates({
    int? offset,
    int? limit,
    int? timeout,
    List<String>? allowedUpdates,
    
    NetworkTimeouts? timeouts,
    CancelToken? cancelToken,
  });

  Future<Either<IProcessResult, bool>> deleteMessage({
    required dynamic chatId,
    required int messageId,

    CancelToken? cancelToken,
  });

  Future<Either<IProcessResult, Message>> replyMessage({
    required dynamic chatId,
    required String text, 
    String? parseMode,
    List<MessageEntity>? entities,
    bool? disableWebPagePreview,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,

    CancelToken? cancelToken,
  });
  
  Future<Either<IProcessResult, Message>> replyPhoto({
    required dynamic chatId,
    required dynamic photo,
    String? caption,
    String? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,

    CancelToken? cancelToken,
  });
}