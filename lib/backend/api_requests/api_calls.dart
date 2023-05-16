import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class WeatherApiCurrentJsonCall {
  static Future<ApiCallResponse> call({
    String? key = 'a6298c7841024a4096b125333231605',
    String? q = '2.046934, 45.318161',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'WeatherApi Current Json',
      apiUrl: 'http://api.weatherapi.com/v1/current.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': key,
        'q': q,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic weatherapicurrent(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static dynamic currentCelcius(dynamic response) => getJsonField(
        response,
        r'''$.current.temp_c''',
      );
  static dynamic cityname(dynamic response) => getJsonField(
        response,
        r'''$.location.name''',
      );
  static dynamic region(dynamic response) => getJsonField(
        response,
        r'''$.location.region''',
      );
  static dynamic conditiontext(dynamic response) => getJsonField(
        response,
        r'''$.current.condition.text''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
