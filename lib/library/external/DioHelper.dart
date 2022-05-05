part of truecollaboration.telegram_bot;

abstract class NetworkHelper {

  static void appendSettingsToDio(Dio dio, NetworkTimeouts timeouts) {
    dio.options.connectTimeout = timeouts.connection.inMilliseconds;
    dio.options.sendTimeout = timeouts.idle.inMilliseconds;
    dio.options.receiveTimeout = timeouts.receiveTotal.inMilliseconds;
  }

  // static IOWebSocketChannel createWebSocketWithSettings(
  //   String wss,
  //   network_ex.NetworkTimeouts timeouts,
  // ) {
  //   // socket.options.connectTimeout = timeouts.connection.inMilliseconds;
  //   // socket.options.sendTimeout = timeouts.idle.inMilliseconds;
  //   // socket.options.receiveTimeout = timeouts.receiveTotal.inMilliseconds;
  //   return socket
  // }
  
  static Future<Either<IProcessResult, Response<T>>> wrapDioRequestError<T>(
    Future<Response<T>> request,
  ) async {
    try {
      final response = await request;
      return Right(response);
    } catch(e, s) {
      IProcessResult? result;
      if(e is DioError) {
        switch(e.type) {
          case DioErrorType.connectTimeout:
            result = new RequestNetworkError(
              connected: false,
              protoDone: false,
              incorrectResponse: true,
              error: e,
              stackTrace: s,
            );
            break;

          case DioErrorType.sendTimeout:
            result = new RequestNetworkError(
              connected: true,
              protoDone: false,
              incorrectResponse: true,
              error: e,
              stackTrace: s,
            );
            break;

          case DioErrorType.receiveTimeout:
            result = new RequestNetworkError(
              connected: true,
              protoDone: true,
              incorrectResponse: true,
              error: e,
              stackTrace: s,
            );
            break;

          case DioErrorType.response:
            result = new RequestNetworkError(
              connected: true,
              protoDone: false,
              incorrectResponse: true,
              error: e,
              stackTrace: s,
            );
            break;

          case DioErrorType.cancel:
            result = const RequestResultCanceled();
            break;

          case DioErrorType.other:
            if(e.error != null) {
              if(e.error is io.HttpException || e.error is io.SocketException) {
                result = new RequestNetworkError(
                  connected: false,
                  protoDone: false,
                  incorrectResponse: true,
                  error: e,
                  stackTrace: s,
                );
              }
            }
            break;

          default:
            break;
        }
      }

      if(result != null)
        return Left(result);
      rethrow;
    }
  }

  static Either<IProcessResult, JsonObjectEx> processResultToJson(
    Response<dynamic> response,
  ) {
    try {
      final str = utf8.decode(response.data as Uint8List);
      return Right(JsonObjectEx.fromJson(str));
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
}