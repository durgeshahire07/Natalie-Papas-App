import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Backend API Group Code

class BackendAPIGroup {
  static String baseUrl = 'https://natalie-papas-backend.onrender.com/api/v1';
  static Map<String, String> headers = {};
  static HomeSearchBarAPICall homeSearchBarAPICall = HomeSearchBarAPICall();
  static LoginAPICall loginAPICall = LoginAPICall();
  static SignUpAPICall signUpAPICall = SignUpAPICall();
  static GetBillingAddressAPICall getBillingAddressAPICall =
      GetBillingAddressAPICall();
  static GetOrderHistoryAPICall getOrderHistoryAPICall =
      GetOrderHistoryAPICall();
}

class HomeSearchBarAPICall {
  Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'home search bar API',
      apiUrl: '${BackendAPIGroup.baseUrl}/products/search',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? searchData(dynamic response) => getJsonField(
        response,
        r'''$.data.products''',
        true,
      ) as List?;
}

class LoginAPICall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    bool? rememberMe,
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "rememberMe": $rememberMe
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login API',
      apiUrl: '${BackendAPIGroup.baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? jwtToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.jwtToken''',
      ));
}

class SignUpAPICall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? email = '',
    String? password = '',
    String? confirmPassword = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "username": "$username",
  "password": "$password",
  "confirmPassword": "$confirmPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sign up API',
      apiUrl: '${BackendAPIGroup.baseUrl}/auth/register',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? signUpMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetBillingAddressAPICall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get billing address API',
      apiUrl: '${BackendAPIGroup.baseUrl}/user/billing',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic billingResult(dynamic response) => getJsonField(
        response,
        r'''$.data.billing''',
      );
}

class GetOrderHistoryAPICall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get order history API',
      apiUrl: '${BackendAPIGroup.baseUrl}/order/id',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Backend API Group Code

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
