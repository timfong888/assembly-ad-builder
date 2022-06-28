import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class CreateAdCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? headline = '',
    String? argument = '',
    int? learnTokens,
    int? issueId,
    String? createdAt = '',
  }) {
    final body = '''
{
  "id": "${id}",
  "headline": "${headline}",
  "argument": "${argument}",
  "learnTokens": ${learnTokens},
  "issue_id": ${issueId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Ad',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:z8lb-rcF/ad',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
        'headline': headline,
        'argument': argument,
        'learnTokens': learnTokens,
        'issue_id': issueId,
        'created_at': createdAt,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class ListIssuesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'List Issues',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:z8lb-rcF/issue',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
