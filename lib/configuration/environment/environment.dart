import 'package:dio/dio.dart';

class Environment {
  static final BaseOptions baseDioOptions = BaseOptions(
    baseUrl: 'https://dummyapi.io/data/v1/',
    headers: {
      'app-id': '652a56c17041f5e485199418',
    },
  );
}
