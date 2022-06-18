import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class IHttpService {
  Dio get client;
}

@Injectable(as: IHttpService)
class HttpService implements IHttpService {
  late final Dio _dio;

  @override
  Dio get client => _dio;

  HttpService() {
    late final Dio _dio;

    final BaseOptions baseOptions = BaseOptions(
      baseUrl: 'https://api.tonnus.io/api/',
      connectTimeout: 5000,
      receiveTimeout: 25000,
    );

    _dio = Dio(baseOptions);

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _onRequest,
        onResponse: _onResponse,
        onError: _onError,
      ),
    );
  }

  void _onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String accessToken = '';

    options.headers.addAll(_getHeaders(accessToken: accessToken));
    handler.next(options);
  }

  void _onResponse(Response response, ResponseInterceptorHandler handler) {}

  void _onError(DioError error, ErrorInterceptorHandler handler) {}

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
