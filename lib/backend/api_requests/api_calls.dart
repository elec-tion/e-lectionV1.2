import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start CommitteeMember Group Code

class CommitteeMemberGroup {
  static String baseUrl =
      'https://api.e-lection.babico.name.tr/api/committeemember';
  static Map<String, String> headers = {
    'x-api-key':
        'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
  };
  static AddElectionCommitteeMemberCall addElectionCommitteeMemberCall =
      AddElectionCommitteeMemberCall();
  static RemoveElectionCommitteeMemberCall removeElectionCommitteeMemberCall =
      RemoveElectionCommitteeMemberCall();
  static RemoveElectionCommitteeMemberFromElectionCall
      removeElectionCommitteeMemberFromElectionCall =
      RemoveElectionCommitteeMemberFromElectionCall();
  static GetElectionCommitteeMemberDetailsCall
      getElectionCommitteeMemberDetailsCall =
      GetElectionCommitteeMemberDetailsCall();
  static AddElectionCommitteeMemberToElectionCall
      addElectionCommitteeMemberToElectionCall =
      AddElectionCommitteeMemberToElectionCall();
}

class AddElectionCommitteeMemberCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addElectionCommitteeMember',
      apiUrl: '${CommitteeMemberGroup.baseUrl}/$wallet/$name',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveElectionCommitteeMemberCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeElectionCommitteeMember',
      apiUrl: '${CommitteeMemberGroup.baseUrl}/$wallet',
      callType: ApiCallType.DELETE,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class RemoveElectionCommitteeMemberFromElectionCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeElectionCommitteeMemberFromElection',
      apiUrl:
          '${CommitteeMemberGroup.baseUrl}withelection/$electionID/$wallet',
      callType: ApiCallType.DELETE,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: true,
    );
  }
}

class GetElectionCommitteeMemberDetailsCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getElectionCommitteeMemberDetails',
      apiUrl: '${CommitteeMemberGroup.baseUrl}/$wallet',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class AddElectionCommitteeMemberToElectionCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addElectionCommitteeMemberToElection',
      apiUrl:
          '${CommitteeMemberGroup.baseUrl}withelection/$wallet/$electionID',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End CommitteeMember Group Code

/// Start District Group Code

class DistrictGroup {
  static String baseUrl = 'https://api.e-lection.babico.name.tr/api/district';
  static Map<String, String> headers = {
    'x-api-key':
        'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
  };
  static AddDistrictCall addDistrictCall = AddDistrictCall();
  static RemoveDistrictCall removeDistrictCall = RemoveDistrictCall();
  static GetDistrictCall getDistrictCall = GetDistrictCall();
  static AddDistrictToElectionCall addDistrictToElectionCall =
      AddDistrictToElectionCall();
  static RemoveDistrictFromElectionCall removeDistrictFromElectionCall =
      RemoveDistrictFromElectionCall();
}

class AddDistrictCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? id = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addDistrict',
      apiUrl: '${DistrictGroup.baseUrl}/$id/$name',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveDistrictCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? id = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeDistrict',
      apiUrl: '${DistrictGroup.baseUrl}/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class GetDistrictCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? id = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDistrict',
      apiUrl: '${DistrictGroup.baseUrl}/$id',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class AddDistrictToElectionCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? id = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addDistrictToElection',
      apiUrl: '${DistrictGroup.baseUrl}withelection/$electionID/$id',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveDistrictFromElectionCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? id = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeDistrictFromElection',
      apiUrl: '${DistrictGroup.baseUrl}/$electionID/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

/// End District Group Code

/// Start Election Group Code

class ElectionGroup {
  static String baseUrl = 'https://api.e-lection.babico.name.tr/api/election';
  static Map<String, String> headers = {
    'x-api-key':
        'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
  };
  static CreateElectionCall createElectionCall = CreateElectionCall();
  static RemoveElectionCall removeElectionCall = RemoveElectionCall();
  static GetElectionDetailsCall getElectionDetailsCall =
      GetElectionDetailsCall();
}

class CreateElectionCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? name = '',
    List<String>? districtIDsList,
    List<String>? candidateAddressesList,
    List<String>? electionCommitteeList,
    int? startDate,
    int? endDate,
  }) async {
    final districtIDs = _serializeList(districtIDsList);
    final candidateAddresses = _serializeList(candidateAddressesList);
    final electionCommittee = _serializeList(electionCommitteeList);

    return ApiManager.instance.makeApiCall(
      callName: 'createElection',
      apiUrl: '${ElectionGroup.baseUrl}/$name/$startDate/$endDate',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveElectionCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? name = '',
    List<String>? districtIDsList,
    List<String>? candidateAddressesList,
    List<String>? electionCommitteeList,
    int? startDate,
    int? endDate,
  }) async {
    final districtIDs = _serializeList(districtIDsList);
    final candidateAddresses = _serializeList(candidateAddressesList);
    final electionCommittee = _serializeList(electionCommitteeList);

    return ApiManager.instance.makeApiCall(
      callName: 'removeElection',
      apiUrl: '${ElectionGroup.baseUrl}/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class GetElectionDetailsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? name = '',
    List<String>? districtIDsList,
    List<String>? candidateAddressesList,
    List<String>? electionCommitteeList,
    int? startDate,
    int? endDate,
  }) async {
    final districtIDs = _serializeList(districtIDsList);
    final candidateAddresses = _serializeList(candidateAddressesList);
    final electionCommittee = _serializeList(electionCommitteeList);

    return ApiManager.instance.makeApiCall(
      callName: 'getElectionDetails',
      apiUrl: '${ElectionGroup.baseUrl}/$id',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

/// End Election Group Code

/// Start Candidate Group Code

class CandidateGroup {
  static String baseUrl = 'https://api.e-lection.babico.name.tr/api/candidate';
  static Map<String, String> headers = {
    'x-api-key':
        'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
  };
  static AddCandidateCall addCandidateCall = AddCandidateCall();
  static RemoveCandidateCall removeCandidateCall = RemoveCandidateCall();
  static AddCandidateToElectionCall addCandidateToElectionCall =
      AddCandidateToElectionCall();
  static RemoveCandidateFromElectionCall removeCandidateFromElectionCall =
      RemoveCandidateFromElectionCall();
  static GetCandidateCall getCandidateCall = GetCandidateCall();
}

class AddCandidateCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? wallet = '',
    String? electionID = '',
    String? districtID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addCandidate',
      apiUrl: '${CandidateGroup.baseUrl}/$name/$districtID/$wallet',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveCandidateCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? wallet = '',
    String? electionID = '',
    String? districtID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeCandidate',
      apiUrl: '${CandidateGroup.baseUrl}/$wallet',
      callType: ApiCallType.DELETE,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class AddCandidateToElectionCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? wallet = '',
    String? electionID = '',
    String? districtID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addCandidateToElection',
      apiUrl: '${CandidateGroup.baseUrl}withelection/$electionID/$wallet',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveCandidateFromElectionCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? wallet = '',
    String? electionID = '',
    String? districtID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeCandidateFromElection',
      apiUrl: '${CandidateGroup.baseUrl}withelection/$electionID/$wallet',
      callType: ApiCallType.DELETE,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class GetCandidateCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? wallet = '',
    String? electionID = '',
    String? districtID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCandidate',
      apiUrl: '${CandidateGroup.baseUrl}/$wallet',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

/// End Candidate Group Code

/// Start Voter Group Code

class VoterGroup {
  static String baseUrl = 'https://api.e-lection.babico.name.tr/api/voter';
  static Map<String, String> headers = {
    'x-api-key':
        'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
  };
  static AddDistrictToVoterCall addDistrictToVoterCall =
      AddDistrictToVoterCall();
  static RemoveDistrictFromVoterCall removeDistrictFromVoterCall =
      RemoveDistrictFromVoterCall();
  static AddVoterToElectionCall addVoterToElectionCall =
      AddVoterToElectionCall();
  static RemoveVoterFromElectionCall removeVoterFromElectionCall =
      RemoveVoterFromElectionCall();
  static RemoveVoterCall removeVoterCall = RemoveVoterCall();
  static GetVoterDetailsCall getVoterDetailsCall = GetVoterDetailsCall();
}

class AddDistrictToVoterCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? districtID = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addDistrictToVoter',
      apiUrl: '${VoterGroup.baseUrl}withdistrict/$wallet/$districtID',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveDistrictFromVoterCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? districtID = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeDistrictFromVoter',
      apiUrl: '${VoterGroup.baseUrl}withdistrict/$districtID/$wallet',
      callType: ApiCallType.DELETE,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class AddVoterToElectionCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? districtID = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addVoterToElection',
      apiUrl: '${VoterGroup.baseUrl}withelection/$wallet/$electionID',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveVoterFromElectionCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? districtID = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeVoterFromElection',
      apiUrl: '${VoterGroup.baseUrl}withelection/$electionID/$wallet',
      callType: ApiCallType.DELETE,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class RemoveVoterCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? districtID = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeVoter',
      apiUrl: '${VoterGroup.baseUrl}/$wallet',
      callType: ApiCallType.DELETE,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class GetVoterDetailsCall {
  Future<ApiCallResponse> call({
    String? wallet = '',
    String? districtID = '',
    String? name = '',
    String? electionID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getVoterDetails',
      apiUrl: '${VoterGroup.baseUrl}/$wallet',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

/// End Voter Group Code

/// Start Balance Group Code

class BalanceGroup {
  static String baseUrl = 'https://api.e-lection.babico.name.tr/balance';
  static Map<String, String> headers = {
    'x-api-key':
        'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
  };
}

/// End Balance Group Code

/// Start Contract Group Code

class ContractGroup {
  static String baseUrl = 'https://api.e-lection.babico.name.tr/api/contract';
  static Map<String, String> headers = {
    'x-api-key':
        'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
  };
  static GetContractAddressCall getContractAddressCall =
      GetContractAddressCall();
  static GetContractAbiCall getContractAbiCall = GetContractAbiCall();
}

class GetContractAddressCall {
  Future<ApiCallResponse> call({
    String? address = '',
    String? abi = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getContractAddress',
      apiUrl: '${ContractGroup.baseUrl}/address',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

class GetContractAbiCall {
  Future<ApiCallResponse> call({
    String? address = '',
    String? abi = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getContractAbi',
      apiUrl: '${ContractGroup.baseUrl}/abi',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            'F7DC013C18F1C42D317EBA8D83873C5E2C3187C4C2477CE6EE9E43C19F4BD581',
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

/// End Contract Group Code

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
