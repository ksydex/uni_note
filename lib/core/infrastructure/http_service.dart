import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

abstract class IHttpService {
  Dio get client;
}

// @Injectable(as: IHttpService)
@module
abstract class HttpService {
  // late final Dio _dio;
  @preResolve
  Future<Dio> get dio {
    final BaseOptions baseOptions = BaseOptions(
      baseUrl: dotenv.env['API_BASE_URL']! + "/api/",
      connectTimeout: 3000,
      receiveTimeout: 1000,
    );

    return Future(() => Dio(baseOptions)
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: _onRequest,
          onResponse: _onResponse,
          onError: _onError,
        ),
      ));
  }

  // @override
  // Dio get client => _dio;

  // HttpService() {
  //   late final Dio _dio;
  //
  //   final BaseOptions baseOptions = BaseOptions(
  //     baseUrl: dotenv.env['API_BASE_URL']!,
  //     connectTimeout: 5000,
  //     receiveTimeout: 25000,
  //   );
  //
  //   _dio = Dio(baseOptions);
  //
  //   _dio.interceptors.add(
  //     InterceptorsWrapper(
  //       onRequest: _onRequest,
  //       onResponse: _onResponse,
  //       onError: _onError,
  //     ),
  //   );
  // }

  void _onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String accessToken = '';

    print('REQUEST: ' +
        options.baseUrl +
        options.path +
        'data: ' +
        options.data.toString());

    options.headers.addAll(_getHeaders(accessToken: accessToken));
    handler.next(options);
  }

  void _onResponse(Response response, ResponseInterceptorHandler handler) {
    print('- RESPONSE: ' + response.statusCode.toString());
    handler.next(response);
  }

  void _onError(DioError error, ErrorInterceptorHandler handler) {
    print('- ERROR: ' + error.toString());
    handler.next(error);
  }

  Map<String, String> _getHeaders({String? accessToken}) {
    String? authorization;
    authorization = accessToken != null ? 'Bearer $accessToken' : null;
    Map<String, String> headers = {
      'content-type': 'application/json',
      'accept': 'application/json',
      'Culture': 'en',
      // 'CurrentCompanyId': '',
    };

    if (authorization != null) {
      headers['authorization'] = authorization;
    }

    return headers;
  }
}
