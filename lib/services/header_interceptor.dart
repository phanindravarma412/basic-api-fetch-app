import 'dart:async';

import 'package:chopper/chopper.dart';

class HeaderInterceptor implements RequestInterceptor {
  static const String JWT_AUTH_SECRET_KEY = "JWT_AUTH_SECRET_KEY";
  static const String JWT_AUTH_SECRET_VALUE =
      "urssd_(!7di2dams(x#wf^wcu#w9yse%9)6^1*#a\$&luw9bp+mytn!key";

  static const String AUTH_KEY = "AUTH_KEY";
  static const String AUTH_VALUE =
      "qMSXQTG53zUGtD7iP8CSVH3RfBt5J6gbeIaUhmA8mBYnfLZS0OkDLB2WrZPgUoMZ";

  static const String SECURE_AUTH_KEY = "SECURE_AUTH_KEY";
  static const String SECURE_AUTH_VALUE =
      "aQY9fTesddOChcS8NEYy5kLT9sy5WsEJhg5LO7EMgGW7IlfhDHMGmpJUu2F9Lzp2";

  static const String LOGGED_IN_KEY = "LOGGED_IN_KEY";
  static const String LOGGED_IN_VALUE =
      "McQMiSKENk7V466uy76DJOd0WsjuZgqvmYkXCAXh931XNbeLyKU1pSOPnByIb2gb";

  static const String NONCE_KEY = "NONCE_KEY";
  static const String NONCE_VALUE =
      "m5etAJbBTA31BOijrKciuLXFaBWvAYtLyLgqSbFyIyTun4OB7fZFnvO6SNHGG6XC";

  static const String AUTH_SALT_KEY = "AUTH_SALT";
  static const String AUTH_SALT_VALUE =
      "AIdnf32HWvfWXf1J8LiN011WeCgvzGxBnLh9SXsE8cT0quM4hMRHH5NYw4xsaxpO";

  static const String SECURE_AUTH_SALT_KEY = "SECURE_AUTH_SALT";
  static const String SECURE_AUTH_SALT_VALUE =
      "l2hLeUnbbdHUndEDOqNQIORi12XmrVJ8tJ9qP7kbTg0OLP1P4jKrTU58VJrqPOne";

  static const String LOGGED_IN_SALT_KEY = "LOGGED_IN_SALT";
  static const String LOGGED_IN_SALT_VALUE =
      "Q13bXoLNR1MZoRkgtuVZ7j8ILfxOStSneLbfdxsSDgPlbEVDutpA6XFs7vyLTOMd";

  static const String NONCE_SALT_KEY = "NONCE_SALT";
  static const String NONCE_SALT_VALUE =
      "yqfp37eSvLd39zip3ZRfFE39HkXFnOSPKouHbHtxHewSDwhmdgNtAYEjjG5MsvyQ";

  static const String AUTH_HEADER = "Authorization";

  static const String BEARER = "Bearer ";

  static const String V4_AUTH_HEADER =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvdXJzdXBlcnN0YXIuY29tIiwiaWF0IjoxNjAxODgyMjUwLCJuYmYiOjE2MDE4ODIyNTAsImV4cCI6MTYwMjQ4NzA1MCwiZGF0YSI6eyJ1c2VyIjp7ImlkIjoyMn19fQ.qL02n_pl129jr8z4wyioDQ_06DWvRQhZSixGt4pRoXs";

  @override
  FutureOr<Request> onRequest(Request request) async {
    Request newRequest = request.copyWith(
      headers: {
        JWT_AUTH_SECRET_KEY: JWT_AUTH_SECRET_VALUE,
        AUTH_KEY: AUTH_VALUE,
        SECURE_AUTH_KEY: SECURE_AUTH_VALUE,
        LOGGED_IN_KEY: LOGGED_IN_VALUE,
        NONCE_KEY: NONCE_VALUE,
        AUTH_SALT_KEY: AUTH_SALT_VALUE,
        SECURE_AUTH_SALT_KEY: SECURE_AUTH_SALT_VALUE,
        LOGGED_IN_SALT_KEY: LOGGED_IN_SALT_VALUE,
        NONCE_SALT_KEY: NONCE_SALT_VALUE,
        AUTH_HEADER: BEARER + V4_AUTH_HEADER
      },
    );
    return newRequest;
  }
}
