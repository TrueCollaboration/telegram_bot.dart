part of truecollaboration.telegram_bot;

abstract class HttpRawApi {
  static const String TAG = "HttpRawApi";

  static bool debugCheckJsonParser = true;

  static Future<Either<IProcessResult, List<Update>>> getUpdates(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      int? offset,
      int? limit,
      int? timeout,
      List<String>? allowedUpdates,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    
    final either = await processRequest<JsonArrayEx>(
      dio.getUri(
        buildMethodUri(token, "getUpdates", {
          "offset": offset,
          "limit": limit,
          "timeout": timeout,
          "allowed_updates": jsonEncode(allowedUpdates),
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final jsonArray = either.right.cast<JsonObjectEx>();
      final result = jsonArray.map((e) => Update.fromJson(e)).toList();
      if(debugCheckJsonParser) {
        _debugCheckJson(jsonArray, result.map((e) => e.toJson()).toList());
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, bool>> setWebhook(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required String url,
      io.File? certificate,
      String? ipAddress,
      int? maxConnections,
      List<String>? allowedUpdates,
      bool? dropPendingUpdates,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(dio.postUri(
        buildMethodUri(token, "setWebhook", {
          "url": url,
          "ip_address": ipAddress,
          "max_connections": maxConnections,
          "allowed_updates": jsonEncode(allowedUpdates),
          "drop_pending_updates": dropPendingUpdates,
        }),
        data: () async {
          if(certificate == null)
            return null;
          return FormData.fromMap({
            "certificate": await MultipartFile.fromFile(certificate.path, filename: (await certificate.length()).toString()),
          });
        }(),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    return Right(either.right);
  }
  
  static Future<Either<IProcessResult, bool>> deleteWebhook(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      bool? dropPendingUpdates,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "deleteWebhook", {
          "drop_pending_updates": dropPendingUpdates,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    return Right(either.right);
  }
  
  static Future<Either<IProcessResult, WebhookInfo>> getWebhookInfo(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      bool? dropPendingUpdates,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "getWebhookInfo", {
          "drop_pending_updates": dropPendingUpdates,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = WebhookInfo.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, User>> getMe(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      bool? dropPendingUpdates,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "getMe", null),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = User.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, bool>> logOut(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      bool? dropPendingUpdates,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "logOut", null),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, bool>> close(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers, {
      required String token,
      bool? dropPendingUpdates,
      
      CancelToken? cancelToken,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "close", null),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> sendMessage(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
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
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendMessage", {
          "chat_id": chatId,
          "text": text,
          "parse_mode": parseMode,
          "entities": jsonEncode(entities),
          "disable_web_page_preview": disableWebPagePreview,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> forwardMessage(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required String fromChatId,
      bool? disableNotification,
      bool? protectContent,
      required String messageId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "forwardMessage", {
          "chat_id": chatId,
          "from_chat_id": fromChatId,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "message_id": messageId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> copyMessage(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required String fromChatId,
      required String messageId,
      String? caption,
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "copyMessage", {
          "chat_id": chatId,
          "from_chat_id": fromChatId,
          "message_id": messageId,
          "caption": caption,
          "parse_mode": parseMode,
          "caption_entities": jsonEncode(captionEntities),
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> sendPhoto(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
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
  }) async {
    if(photo == null || !(photo is String || photo is io.File))
      throw(new Exception("photo must be String or File"));

    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendPhoto", {
          "chat_id": chatId,
          if(photo is String)
            "photo": photo,
          "caption": caption,
          "parse_mode": parseMode,
          "caption_entities": jsonEncode(captionEntities),
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        data: () async {
          if(!(photo is io.File))
            return null;
          return FormData.fromMap({
            "photo": await MultipartFile.fromFile(photo.path, filename: (await photo.length()).toString()),
          });
        }(),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> sendAudio(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required dynamic audio,
      String? caption,
      String? parseMode,
      List<MessageEntity>? captionEntities,
      int? duration,
      String? performer,
      String? title,
      dynamic thumb,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    if(audio == null || !(audio is String || audio is io.File))
      throw(new Exception("audio must be String or File"));

    if(thumb != null && !(thumb is String || thumb is io.File))
      throw(new Exception("thumb must be String or File"));

    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendAudio", {
          "chat_id": chatId,
          if(audio is String)
            "audio": audio,
          "caption": caption,
          "parse_mode": parseMode,
          "caption_entities": jsonEncode(captionEntities),
          "duration": duration,
          "performer": performer,
          "title": title,
          if(thumb is String)
            "thumb": thumb,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        data: () async {
          final Map<String, dynamic> datas = {};
          if(audio is io.File)
            datas["audio"] = audio;
          if(thumb is io.File)
            datas["thumb"] = thumb;
          return generateFormData(datas);
        }(),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> sendDocument(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required dynamic document,
      dynamic thumb,
      String? caption,
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    if(document == null || !(document is String || document is io.File))
      throw(new Exception("document must be String or File"));

    if(thumb != null && !(thumb is String || thumb is io.File))
      throw(new Exception("thumb must be String or File"));

    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendDocument", {
          "chat_id": chatId,
          if(document is String)
            "document": document,
          if(thumb is String)
            "thumb": thumb,
          "caption": caption,
          "parse_mode": parseMode,
          "caption_entities": jsonEncode(captionEntities),
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        data: () async {
          final Map<String, dynamic> datas = {};
          if(document is io.File)
            datas["document"] = document;
          if(thumb is io.File)
            datas["thumb"] = thumb;
          return generateFormData(datas);
        }(),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> sendVideo(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required dynamic video,
      int? duration,
      int? width,
      int? height,
      dynamic thumb,
      String? caption,
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? supportsStreaming,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    if(video == null || !(video is String || video is io.File))
      throw(new Exception("video must be String or File"));

    if(thumb != null && !(thumb is String || thumb is io.File))
      throw(new Exception("thumb must be String or File"));

    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendVideo", {
          "chat_id": chatId,
          if(video is String)
            "video": video,
          "duration": duration,
          "width": width,
          "height": height,
          if(thumb is String)
            "thumb": thumb,
          "caption": caption,
          "parse_mode": parseMode,
          "caption_entities": jsonEncode(captionEntities),
          "supports_streaming": supportsStreaming,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        data: () async {
          final Map<String, dynamic> datas = {};
          if(video is io.File)
            datas["video"] = video;
          if(thumb is io.File)
            datas["thumb"] = thumb;
          return generateFormData(datas);
        }(),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> sendAnimation(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required dynamic animation,
      int? duration,
      int? width,
      int? height,
      dynamic thumb,
      String? caption,
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    if(animation == null || !(animation is String || animation is io.File))
      throw(new Exception("animation must be String or File"));

    if(thumb != null && !(thumb is String || thumb is io.File))
      throw(new Exception("thumb must be String or File"));

    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendAnimation", {
          "chat_id": chatId,
          if(animation is String)
            "animation": animation,
          "duration": duration,
          "width": width,
          "height": height,
          if(thumb is String)
            "thumb": thumb,
          "caption": caption,
          "parse_mode": parseMode,
          "caption_entities": jsonEncode(captionEntities),
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        data: () async {
          final Map<String, dynamic> datas = {};
          if(animation is io.File)
            datas["animation"] = animation;
          if(thumb is io.File)
            datas["thumb"] = thumb;
          return generateFormData(datas);
        }(),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> sendVoice(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required dynamic voice,
      String? caption,
      String? parseMode,
      List<MessageEntity>? captionEntities,
      int? duration,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    if(voice == null || !(voice is String || voice is io.File))
      throw(new Exception("voice must be String or File"));

    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendVoice", {
          "chat_id": chatId,
          if(voice is String)
            "voice": voice,
          "caption": caption,
          "parse_mode": parseMode,
          "caption_entities": jsonEncode(captionEntities),
          "duration": duration,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        data: () async {
          final Map<String, dynamic> datas = {};
          if(voice is io.File)
            datas["voice"] = voice;
          return generateFormData(datas);
        }(),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> sendVideoNote(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required dynamic videoNote,
      int? duration,
      int? length,
      dynamic thumb,
      String? caption,
      String? parseMode,
      List<MessageEntity>? captionEntities,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    if(videoNote == null || !(videoNote is String || videoNote is io.File))
      throw(new Exception("videoNote must be String or File"));

    if(thumb != null && !(thumb is String || thumb is io.File))
      throw(new Exception("thumb must be String or File"));

    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendVideoNote", {
          "chat_id": chatId,
          if(videoNote is String)
            "video_note": videoNote,
          "duration": duration,
          "length": length,
          if(thumb is String)
            "thumb": thumb,
          "caption": caption,
          "parse_mode": parseMode,
          "caption_entities": jsonEncode(captionEntities),
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        data: () async {
          final Map<String, dynamic> datas = {};
          if(videoNote is io.File)
            datas["video_note"] = videoNote;
          if(thumb is io.File)
            datas["thumb"] = thumb;
          return generateFormData(datas);
        }(),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  /// TODO TO REALIZE MULTIPART SENDING
  static Future<Either<IProcessResult, List<Message>>> sendMediaGroup(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required List<InputMedia> media,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonArrayEx>(
      dio.postUri(
        buildMethodUri(token, "sendMediaGroup", {
          "chat_id": chatId,
          "caption_entities": jsonEncode(media),
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        // data: () async {
        //   final Map<String, dynamic> datas = {};
        //   if(videoNote is io.File)
        //     datas["video_note"] = videoNote;
        //   if(thumb is io.File)
        //     datas["thumb"] = thumb;
        //   return generateFormData(datas);
        // }(),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = json.map((e) => Message.fromJson(e)).toList();
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [...result.map((e) => e.toJson())]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> sendLocation(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required double latitude,
      required double longitude,
      double? horizontalAccuracy,
      int? livePeriod,
      int? heading,
      int? proximityAlertRadius,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendLocation", {
          "chat_id": chatId,
          "latitude": latitude,
          "longitude": longitude,
          "horizontal_accuracy": horizontalAccuracy,
          "live_period": livePeriod,
          "heading": heading,
          "proximity_alert_radius": proximityAlertRadius,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );
    
    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<Either<IProcessResult, Message>> editMessageLiveLocation(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      dynamic chatId,
      int? messageId,
      String? inlineMessageId,
      required double latitude,
      required double longitude,
      double? horizontalAccuracy,
      int? heading,
      int? proximityAlertRadius,
      ReplyMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "editMessageLiveLocation", {
          "chat_id": chatId,
          "message_id": messageId,
          "inline_message_id": inlineMessageId,
          "latitude": latitude,
          "longitude": longitude,
          "horizontal_accuracy": horizontalAccuracy,
          "heading": heading,
          "proximity_alert_radius": proximityAlertRadius,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Message>> stopMessageLiveLocation(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      dynamic chatId,
      int? messageId,
      String? inlineMessageId,
      ReplyMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "stopMessageLiveLocation", {
          "chat_id": chatId,
          "message_id": messageId,
          "inline_message_id": inlineMessageId,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Message>> sendVenue(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required double latitude,
      required double longitude,
      required String title,
      required String address,
      String? foursquareId,
      String? foursquareType,
      String? googlePlaceId,
      String? googlePlaceType,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendVenue", {
          "chat_id": chatId,
          "latitude": latitude,
          "longitude": longitude,
          "title": title,
          "address": address,
          "foursquare_id": foursquareId,
          "foursquare_type": foursquareType,
          "google_place_id": googlePlaceId,
          "google_place_type": googlePlaceType,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Message>> sendContact(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required String phoneNumber,
      required String firstName,
      String? lastName,
      String? vcard,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendContact", {
          "chat_id": chatId,
          "phone_number": phoneNumber,
          "first_name": firstName,
          "last_name": lastName,
          "vcard": vcard,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Message>> sendPoll(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required String question,
      required List<String> options,
      bool? isAnonymous,
      String? type,
      bool? allowsMultipleAnswers,
      int? correctOptionId,
      String? explanation,
      String? explanationParseMode,
      List<MessageEntity>? explanationEntities,
      int? openPeriod,
      int? closeDate,
      bool? isClosed,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendPoll", {
          "chat_id": chatId,
          "question": question,
          "options": options,
          "is_anonymous": isAnonymous,
          "type": type,
          "allows_multiple_answers": allowsMultipleAnswers,
          "correct_option_id": correctOptionId,
          "explanation": explanation,
          "explanation_parse_mode": explanationParseMode,
          "explanation_entities": explanationEntities,
          "open_period": openPeriod,
          "close_date": closeDate,
          "is_closed": isClosed,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Message>> sendDice(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      String? emoji,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      ReplyMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendDice", {
          "chat_id": chatId,
          "emoji": emoji,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> sendChatAction(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required EChatAction action,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendChatAction", {
          "chat_id": chatId,
          "action": action.toJson(),
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(true);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, UserProfilePhotos>> getUserProfilePhotos(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic userId,
      int? offset,
      int? limit,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "getUserProfilePhotos", {
          "user_id": userId,
          "offset": offset,
          "limit": limit,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = UserProfilePhotos.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, File>> getFile(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic fileId,
      int? offset,
      int? limit,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "getFile", {
          "file_id": fileId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = File.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> banChatMember(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int userId,
      int? untilDate,
      bool? revokeMessages,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "banChatMember", {
          "chat_id": chatId,
          "user_id": userId,
          "until_date": untilDate,
          "revoke_messages": revokeMessages,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> unbanChatMember(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int userId,
      bool? onlyIfBanned,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "unbanChatMember", {
          "chat_id": chatId,
          "user_id": userId,
          "only_if_banned": onlyIfBanned,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> restrictChatMember(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int userId,
      required ChatPermissions permissions,
      int? untilDate,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "restrictChatMember", {
          "chat_id": chatId,
          "user_id": userId,
          "permissions": permissions,
          "until_date": untilDate,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> promoteChatMember(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int userId,
      bool? isAnonymous,
      bool? canManageChat,
      bool? canPostMessages,
      bool? canEditMessages,
      bool? canDeleteMessages,
      bool? canManageVoiceChats,
      bool? canRestrictMembers,
      bool? canPromoteMembers,
      bool? canChangeInfo,
      bool? canInviteUsers,
      bool? canPinMessages,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "promoteChatMember", {
          "chat_id": chatId,
          "user_id": userId,
          "is_anonymous": isAnonymous,
          "can_manage_chat": canManageChat,
          "can_post_messages": canPostMessages,
          "can_edit_messages": canEditMessages,
          "can_delete_messages": canDeleteMessages,
          "can_manage_voice_chats": canManageVoiceChats,
          "can_restrict_members": canRestrictMembers,
          "can_promote_members": canPromoteMembers,
          "can_change_info": canChangeInfo,
          "can_invite_users": canInviteUsers,
          "can_pin_messages": canPinMessages,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> setChatAdministratorCustomTitle(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int userId,
      required String customTitle,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "setChatAdministratorCustomTitle", {
          "chat_id": chatId,
          "user_id": userId,
          "custom_title": customTitle,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> banChatSenderChat(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int senderChatId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "banChatSenderChat", {
          "chat_id": chatId,
          "sender_chat_id": senderChatId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> unbanChatSenderChat(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int senderChatId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "unbanChatSenderChat", {
          "chat_id": chatId,
          "sender_chat_id": senderChatId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> setChatPermissions(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required ChatPermissions permissions,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "setChatPermissions", {
          "chat_id": chatId,
          "permissions": permissions,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, String>> exportChatInviteLink(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required ChatPermissions permissions,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<String>(
      dio.postUri(
        buildMethodUri(token, "exportChatInviteLink", {
          "chat_id": chatId,
          "permissions": permissions,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, ChatInviteLink>> createChatInviteLink(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      String? name,
      int? expireDate,
      int? memberLimit,
      int? createsJoinRequest,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "createChatInviteLink", {
          "chat_id": chatId,
          "name": name,
          "expire_date": expireDate,
          "member_limit": memberLimit,
          "creates_join_request": createsJoinRequest,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = ChatInviteLink.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, ChatInviteLink>> editChatInviteLink(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required String inviteLink,
      String? name,
      int? expireDate,
      int? memberLimit,
      int? createsJoinRequest,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "editChatInviteLink", {
          "chat_id": chatId,
          "invite_link": inviteLink,
          "name": name,
          "expire_date": expireDate,
          "member_limit": memberLimit,
          "creates_join_request": createsJoinRequest,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = ChatInviteLink.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, ChatInviteLink>> revokeChatInviteLink(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required String inviteLink,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "revokeChatInviteLink", {
          "chat_id": chatId,
          "invite_link": inviteLink,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = ChatInviteLink.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> approveChatJoinRequest(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int userId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "approveChatJoinRequest", {
          "chat_id": chatId,
          "userId": userId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> declineChatJoinRequest(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int userId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "declineChatJoinRequest", {
          "chat_id": chatId,
          "userId": userId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> setChatPhoto(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required dynamic photo,
  }) async {
    if(photo == null || !(photo is String || photo is io.File))
      throw(new Exception("photo must be String or File"));

    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "setChatPhoto", {
          "chat_id": chatId,
          if(photo is String)
            "photo": photo,
        }),
        data: () async {
          final Map<String, dynamic> datas = {};
          if(photo is io.File)
            datas["photo"] = photo;
          return generateFormData(datas);
        }(),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> deleteChatPhoto(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "deleteChatPhoto", {
          "chat_id": chatId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> setChatTitle(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required String title,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "setChatTitle", {
          "chat_id": chatId,
          "title": title,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> setChatDescription(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required String description,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "setChatDescription", {
          "chat_id": chatId,
          "description": description,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> pinChatMessage(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int messageId,
      bool? disableNotification,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "pinChatMessage", {
          "chat_id": chatId,
          "message_id": messageId,
          "disable_notification": disableNotification,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> unpinChatMessage(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int messageId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "unpinChatMessage", {
          "chat_id": chatId,
          "message_id": messageId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> unpinAllChatMessages(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "unpinAllChatMessages", {
          "chat_id": chatId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> leaveChat(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "leaveChat", {
          "chat_id": chatId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Chat>> getChat(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "getChat", {
          "chat_id": chatId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Chat.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  

  static Future<Either<IProcessResult, List<ChatMember>>> getChatAdministrators(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonArrayEx>(
      dio.postUri(
        buildMethodUri(token, "getChatAdministrators", {
          "chat_id": chatId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = json.map((e) => ChatMember.fromJson(e)).toList();
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [...result.map((e) => e.toJson())]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  

  static Future<Either<IProcessResult, int>> getChatMemberCount(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<int>(
      dio.postUri(
        buildMethodUri(token, "getChatMemberCount", {
          "chat_id": chatId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  

  static Future<Either<IProcessResult, ChatMember>> getChatMember(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int userId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "getChatMember", {
          "chat_id": chatId,
          "user_id": userId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = ChatMember.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  

  static Future<Either<IProcessResult, bool>> answerCallbackQuery(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required String callbackQueryId,
      String? text,
      bool? showAlert,
      String? url,
      int? cacheTime,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "answerCallbackQuery", {
          "callback_query_id": callbackQueryId,
          "text": text,
          "show_alert": showAlert,
          "url": url,
          "cache_time": cacheTime,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  

  static Future<Either<IProcessResult, bool>> setMyCommands(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required List<BotCommand> commands,
      BotCommandScope? scope,
      String? languageCode,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "setMyCommands", {
          "commands": commands,
          "scope": scope,
          "language_code": languageCode,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> deleteMyCommands(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      BotCommandScope? scope,
      String? languageCode,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "deleteMyCommands", {
          "scope": scope,
          "language_code": languageCode,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, List<BotCommand>>> getMyCommands(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      BotCommandScope? scope,
      String? languageCode,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonArrayEx>(
      dio.postUri(
        buildMethodUri(token, "getMyCommands", {
          "scope": scope,
          "language_code": languageCode,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = json.map((e) => BotCommand.fromJson(e)).toList();
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [...result.map((e) => e.toJson())]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Message>> editMessageText(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      int? messageId,
      int? inlineMessageId,
      required String text,
      String? parseMode,
      List<MessageEntity>? entities,
      bool? disableWebPagePreview,
      InlineKeyboardMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "editMessageText", {
          "chat_id": chatId,
          "message_id": messageId,
          "inline_message_id": inlineMessageId,
          "text": text,
          "parse_mode": parseMode,
          "entities": entities,
          "disable_web_page_preview": disableWebPagePreview,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Message>> editMessageCaption(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      int? messageId,
      int? inlineMessageId,
      required String caption,
      String? parseMode,
      List<MessageEntity>? captionEntities,
      InlineKeyboardMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "editMessageCaption", {
          "chat_id": chatId,
          "message_id": messageId,
          "inline_message_id": inlineMessageId,
          "caption": caption,
          "parse_mode": parseMode,
          "caption_entities": captionEntities,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Message>> editMessageMedia(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      int? messageId,
      int? inlineMessageId,
      required InputMedia media,
      InlineKeyboardMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "editMessageMedia", {
          "chat_id": chatId,
          "message_id": messageId,
          "inline_message_id": inlineMessageId,
          "media": media,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Message>> editMessageReplyMarkup(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      int? messageId,
      int? inlineMessageId,
      InlineKeyboardMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "editMessageReplyMarkup", {
          "chat_id": chatId,
          "message_id": messageId,
          "inline_message_id": inlineMessageId,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Poll>> stopPoll(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int messageId,
      InlineKeyboardMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "stopPoll", {
          "chat_id": chatId,
          "message_id": messageId,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Poll.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> deleteMessage(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required int messageId,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "deleteMessage", {
          "chat_id": chatId,
          "message_id": messageId,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> answerInlineQuery(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required String inlineQueryId,
      required List<InlineQueryResult> results,
      int? cacheTime,
      bool? isPersonal,
      String? nextOffset,
      String? switchPmText,
      String? switchPmParameter,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "answerInlineQuery", {
          "inline_query_id": inlineQueryId,
          "results": results,
          "cache_time": cacheTime,
          "is_personal": isPersonal,
          "next_offset": nextOffset,
          "switch_pm_text": switchPmText,
          "switch_pm_parameter": switchPmParameter,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, Message>> sendInvoice(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required dynamic chatId,
      required String title,
      required String description,
      required String payload,
      required String providerToken,
      required String currency,
      required List<LabeledPrice> prices,
      int? maxTipAmount,
      List<int>? suggestedTipAmounts,
      String? startParameter,
      String? providerData,
      String? photoUrl,
      int? photoSize,
      int? photoWidth,
      int? photoHeight,
      bool? needName,
      bool? needPhoneNumber,
      bool? needEmail,
      bool? needShippingAddress,
      bool? sendPhoneNumberToProvider,
      bool? sendEmailToProvider,
      bool? isFlexible,
      bool? disableNotification,
      bool? protectContent,
      int? replyToMessageId,
      bool? allowSendingWithoutReply,
      InlineKeyboardMarkup? replyMarkup,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<JsonObjectEx>(
      dio.postUri(
        buildMethodUri(token, "sendInvoice", {
          "chat_id": chatId,
          "title": title,
          "description": description,
          "payload": payload,
          "provider_token": providerToken,
          "currency": currency,
          "prices": prices,
          "max_tip_amount": maxTipAmount,
          "suggested_tip_amounts": suggestedTipAmounts,
          "start_parameter": startParameter,
          "provider_data": providerData,
          "photo_url": photoUrl,
          "photo_size": photoSize,
          "photo_width": photoWidth,
          "photo_height": photoHeight,
          "need_name": needName,
          "need_phone_number": needPhoneNumber,
          "need_email": needEmail,
          "need_shipping_address": needShippingAddress,
          "send_phone_number_to_provider": sendPhoneNumberToProvider,
          "send_email_to_provider": sendEmailToProvider,
          "is_flexible": isFlexible,
          "disable_notification": disableNotification,
          "protect_content": protectContent,
          "reply_to_message_id": replyToMessageId,
          "allow_sending_without_reply": allowSendingWithoutReply,
          "reply_markup": replyMarkup,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      final json = either.right;
      final result = Message.fromJson(json);
      if(debugCheckJsonParser) {
        _debugCheckJson([json], [result.toJson()]);
      } return Right(result);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> answerShippingQuery(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required String shippingQueryId,
      required bool ok,
      List<ShippingOption>? shippingOptions,
      String? errorMessage,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "answerShippingQuery", {
          "shipping_query_id": shippingQueryId,
          "ok": ok,
          "shipping_options": shippingOptions,
          "error_message": errorMessage,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }

  static Future<Either<IProcessResult, bool>> answerPreCheckoutQuery(
    Dio dio,
    NetworkTimeouts timeouts,
    Map<String, String> headers,
    CancelToken? cancelToken, {
      required String token,
      required String preCheckoutQueryId,
      required bool ok,
      String? errorMessage,
  }) async {
    NetworkHelper.appendSettingsToDio(dio, timeouts);
    final either = await processRequest<bool>(
      dio.postUri(
        buildMethodUri(token, "answerPreCheckoutQuery", {
          "pre_checkout_query_id": preCheckoutQueryId,
          "ok": ok,
          "error_message": errorMessage,
        }),
        options: Options(
          responseType: ResponseType.json,
        ),
        cancelToken: cancelToken,
      ),
    );

    if(either.isLeft)
      return Left(either.left);
    try {
      return Right(either.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  


















  
  static Future<Either<IProcessResult, T>> processRequest<T>(
    Future<Response<dynamic>> request,
  ) async {
    final either = await NetworkHelper.wrapDioRequestError(
      request,
    );

    if(either.isLeft) {
      while(true) {
        final either2 = tryParseResponseErrorToJson(either.left);
        if(either2.isLeft)
          return Left(either2.left);
        final errorWrapper = either.left as AppProcessError;
        final json = either2.right;
        if(json.getBoolean("ok")! == false) {
          return Left(new TelegramError(
            code: json.getInteger("error_code")!,
            message: json.getString("description")!,
            error: errorWrapper.error,
            stackTrace: errorWrapper.stackTrace,
          ));
        } break;
      }
      return Left(either.left);
    }

    try {
      final either2 = parseApiResponse<T>(either.right.data);
      if(either2.isLeft)
        return Left(either2.left);
      return Right(either2.right);
    } catch(e, s) {
      return Left(new AppInternalError(
        error: e,
        stackTrace: s,
      ));
    }
  }
  
  static Future<FormData?> generateFormData(Map<String, dynamic> datas) async {
    if(datas.isEmpty)
      return null;
      
    final Map<String, dynamic> map = {};
    for(final data in datas.entries) {
      final value = data.value;
      if(data is io.File) {
        map[data.key] = await MultipartFile.fromFile(value.path, filename: (await value.length()).toString());
        continue;
      } map[data.key] = value;
    } return FormData.fromMap(map);
  }



  static Either<IProcessResult, JsonObjectEx> tryParseResponseErrorToJson(
    IProcessResult result, {
      bool autoParse = false,
  }) {
    while(true) {
      if(!(result is AppProcessError))
        break;
      final errorWrapper = result;
      if(!(errorWrapper.error is DioError))
        break;
      final error = errorWrapper.error as DioError;
      if(error.response == null)
        break;
      final response = error.response!;
      final statusCode = response.statusCode;
      if(statusCode == null || !(statusCode >= 400 && statusCode < 500))
        break;

      if(!(response.data is JsonObject))
        break;
      return Right(JsonObjectEx.fromMap(response.data, autoParse: autoParse));
    } return Left(result);
  }

  static Either<AppProcessError, T> parseApiResponse<T>(dynamic data) {
    try {
      final json = JsonObjectEx.fromMap(data as JsonObject);
      final bool successful;

      successful = json.getBoolean("ok")!;

      if(!successful) {
        return Left(RequestApiError(
          code: json.getInteger("error_code")!,
          message: json.getString("description")!,
        ));
      }

      if(T == JsonObjectEx)
        return Right(json.getJsonObject("result")! as T);
      else if(T == JsonArrayEx)
        return Right(json.getJsonArray("result")! as T);
      else return Right(json.getDynamic("result")! as T);
    } catch(e, s) {
      return Left(AppInternalError(error: e, stackTrace: s));
    }
  }

  static Uri buildMethodUri(
    String token,
    String unencodedPath,
    Map<String, dynamic>? queryParameters,
  ) {
    final Map<String, dynamic> map = {};
    if(queryParameters != null) {
      for(final entry in queryParameters.entries) {
        if(entry.value == null)
          continue;
        map[entry.key] = entry.value is Iterable ? entry.value : entry.value.toString();
      }
    } return Uri.https(TelegramBot.URL_API, "bot$token/$unencodedPath", map);
  }



  static void _debugCheckJson(List<IJsonEx> before, List<IJsonEx> after) {
    // TODO REALIZE
  }
}