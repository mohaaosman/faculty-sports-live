import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class NewsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'News',
      apiUrl: 'https://facultylivescore.site/api/news',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json',
        'Authorization': 'Bearer LrquEgBjC1HUzQ49mZlwuAER2Ad00ivAHH7brFPn',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic articles(dynamic response) => getJsonField(
        response,
        r'''$.news''',
        true,
      );
}

class MatchesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Matches',
      apiUrl: 'https://facultylivescore.site/api/matches',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json',
        'Authorization': 'Bearer LrquEgBjC1HUzQ49mZlwuAER2Ad00ivAHH7brFPn',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic matches(dynamic response) => getJsonField(
        response,
        r'''$.matches''',
        true,
      );
}

class ScoreCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Score',
      apiUrl: 'https://facultylivescore.site/api/scores',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer LrquEgBjC1HUzQ49mZlwuAER2Ad00ivAHH7brFPn',
        'content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic scores(dynamic response) => getJsonField(
        response,
        r'''$.scores''',
        true,
      );
}

class TeamsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Teams',
      apiUrl: 'https://facultylivescore.site/api/teams',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer LrquEgBjC1HUzQ49mZlwuAER2Ad00ivAHH7brFPn',
        'content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic teams(dynamic response) => getJsonField(
        response,
        r'''$.teams''',
        true,
      );
}

class GetTeamPlayersCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetTeamPlayers',
      apiUrl: 'https://facultylivescore.site/api/players',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json',
        'Authorization': 'Bearer LrquEgBjC1HUzQ49mZlwuAER2Ad00ivAHH7brFPn',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic teamplayers(dynamic response) => getJsonField(
        response,
        r'''$.players''',
        true,
      );
}

class StandingsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Standings',
      apiUrl: 'https://facultylivescore.site/api/standings',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json',
        'Authorization': 'Bearer LrquEgBjC1HUzQ49mZlwuAER2Ad00ivAHH7brFPn',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic standings(dynamic response) => getJsonField(
        response,
        r'''$.standings''',
        true,
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
