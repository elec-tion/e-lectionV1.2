import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _userPassword = '';
  String get userPassword => _userPassword;
  set userPassword(String value) {
    _userPassword = value;
  }

  String _userIDNum = '';
  String get userIDNum => _userIDNum;
  set userIDNum(String value) {
    _userIDNum = value;
  }

  String _electionName = '';
  String get electionName => _electionName;
  set electionName(String value) {
    _electionName = value;
  }

  List<String> _addCandidateToElection = [];
  List<String> get addCandidateToElection => _addCandidateToElection;
  set addCandidateToElection(List<String> value) {
    _addCandidateToElection = value;
  }

  void addToAddCandidateToElection(String value) {
    _addCandidateToElection.add(value);
  }

  void removeFromAddCandidateToElection(String value) {
    _addCandidateToElection.remove(value);
  }

  void removeAtIndexFromAddCandidateToElection(int index) {
    _addCandidateToElection.removeAt(index);
  }

  void updateAddCandidateToElectionAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _addCandidateToElection[index] = updateFn(_addCandidateToElection[index]);
  }

  void insertAtIndexInAddCandidateToElection(int index, String value) {
    _addCandidateToElection.insert(index, value);
  }

  List<String> _addElecComtoElection = [];
  List<String> get addElecComtoElection => _addElecComtoElection;
  set addElecComtoElection(List<String> value) {
    _addElecComtoElection = value;
  }

  void addToAddElecComtoElection(String value) {
    _addElecComtoElection.add(value);
  }

  void removeFromAddElecComtoElection(String value) {
    _addElecComtoElection.remove(value);
  }

  void removeAtIndexFromAddElecComtoElection(int index) {
    _addElecComtoElection.removeAt(index);
  }

  void updateAddElecComtoElectionAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _addElecComtoElection[index] = updateFn(_addElecComtoElection[index]);
  }

  void insertAtIndexInAddElecComtoElection(int index, String value) {
    _addElecComtoElection.insert(index, value);
  }

  List<String> _addVoterToElection = [];
  List<String> get addVoterToElection => _addVoterToElection;
  set addVoterToElection(List<String> value) {
    _addVoterToElection = value;
  }

  void addToAddVoterToElection(String value) {
    _addVoterToElection.add(value);
  }

  void removeFromAddVoterToElection(String value) {
    _addVoterToElection.remove(value);
  }

  void removeAtIndexFromAddVoterToElection(int index) {
    _addVoterToElection.removeAt(index);
  }

  void updateAddVoterToElectionAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _addVoterToElection[index] = updateFn(_addVoterToElection[index]);
  }

  void insertAtIndexInAddVoterToElection(int index, String value) {
    _addVoterToElection.insert(index, value);
  }

  String _electionID = '';
  String get electionID => _electionID;
  set electionID(String value) {
    _electionID = value;
  }

  String _addedElecComWalletID = '';
  String get addedElecComWalletID => _addedElecComWalletID;
  set addedElecComWalletID(String value) {
    _addedElecComWalletID = value;
  }

  String _cityID = '';
  String get cityID => _cityID;
  set cityID(String value) {
    _cityID = value;
  }

  String _districtID = '';
  String get districtID => _districtID;
  set districtID(String value) {
    _districtID = value;
  }

  String _countryID = '';
  String get countryID => _countryID;
  set countryID(String value) {
    _countryID = value;
  }

  String _neighborhoodID = '';
  String get neighborhoodID => _neighborhoodID;
  set neighborhoodID(String value) {
    _neighborhoodID = value;
  }

  List<String> _userDistrictIDs = [];
  List<String> get userDistrictIDs => _userDistrictIDs;
  set userDistrictIDs(List<String> value) {
    _userDistrictIDs = value;
  }

  void addToUserDistrictIDs(String value) {
    _userDistrictIDs.add(value);
  }

  void removeFromUserDistrictIDs(String value) {
    _userDistrictIDs.remove(value);
  }

  void removeAtIndexFromUserDistrictIDs(int index) {
    _userDistrictIDs.removeAt(index);
  }

  void updateUserDistrictIDsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _userDistrictIDs[index] = updateFn(_userDistrictIDs[index]);
  }

  void insertAtIndexInUserDistrictIDs(int index, String value) {
    _userDistrictIDs.insert(index, value);
  }

  String _voterPrivKey = '';
  String get voterPrivKey => _voterPrivKey;
  set voterPrivKey(String value) {
    _voterPrivKey = value;
  }

  String _electionDistrict = '';
  String get electionDistrict => _electionDistrict;
  set electionDistrict(String value) {
    _electionDistrict = value;
  }

  List<String> _candidateNames = [];
  List<String> get candidateNames => _candidateNames;
  set candidateNames(List<String> value) {
    _candidateNames = value;
  }

  void addToCandidateNames(String value) {
    _candidateNames.add(value);
  }

  void removeFromCandidateNames(String value) {
    _candidateNames.remove(value);
  }

  void removeAtIndexFromCandidateNames(int index) {
    _candidateNames.removeAt(index);
  }

  void updateCandidateNamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _candidateNames[index] = updateFn(_candidateNames[index]);
  }

  void insertAtIndexInCandidateNames(int index, String value) {
    _candidateNames.insert(index, value);
  }

  bool _regionalMi = false;
  bool get regionalMi => _regionalMi;
  set regionalMi(bool value) {
    _regionalMi = value;
  }

  int _forLoop = 0;
  int get forLoop => _forLoop;
  set forLoop(int value) {
    _forLoop = value;
  }

  List<int> _statisticCandidate = [];
  List<int> get statisticCandidate => _statisticCandidate;
  set statisticCandidate(List<int> value) {
    _statisticCandidate = value;
  }

  void addToStatisticCandidate(int value) {
    _statisticCandidate.add(value);
  }

  void removeFromStatisticCandidate(int value) {
    _statisticCandidate.remove(value);
  }

  void removeAtIndexFromStatisticCandidate(int index) {
    _statisticCandidate.removeAt(index);
  }

  void updateStatisticCandidateAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _statisticCandidate[index] = updateFn(_statisticCandidate[index]);
  }

  void insertAtIndexInStatisticCandidate(int index, int value) {
    _statisticCandidate.insert(index, value);
  }

  String _winnerWalletID1 = '';
  String get winnerWalletID1 => _winnerWalletID1;
  set winnerWalletID1(String value) {
    _winnerWalletID1 = value;
  }

  int _winnerCount1 = 0;
  int get winnerCount1 => _winnerCount1;
  set winnerCount1(int value) {
    _winnerCount1 = value;
  }

  String _winnerWalletIDFinal = '';
  String get winnerWalletIDFinal => _winnerWalletIDFinal;
  set winnerWalletIDFinal(String value) {
    _winnerWalletIDFinal = value;
  }

  int _winnerCountFinal = 0;
  int get winnerCountFinal => _winnerCountFinal;
  set winnerCountFinal(int value) {
    _winnerCountFinal = value;
  }

  int _timerCheck = 0;
  int get timerCheck => _timerCheck;
  set timerCheck(int value) {
    _timerCheck = value;
  }
}
