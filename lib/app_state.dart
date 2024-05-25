import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
  set userPassword(String _value) {
    _userPassword = _value;
  }

  String _userIDNum = '';
  String get userIDNum => _userIDNum;
  set userIDNum(String _value) {
    _userIDNum = _value;
  }

  String _electionName = '';
  String get electionName => _electionName;
  set electionName(String _value) {
    _electionName = _value;
  }

  List<String> _addCandidateToElection = [];
  List<String> get addCandidateToElection => _addCandidateToElection;
  set addCandidateToElection(List<String> _value) {
    _addCandidateToElection = _value;
  }

  void addToAddCandidateToElection(String _value) {
    _addCandidateToElection.add(_value);
  }

  void removeFromAddCandidateToElection(String _value) {
    _addCandidateToElection.remove(_value);
  }

  void removeAtIndexFromAddCandidateToElection(int _index) {
    _addCandidateToElection.removeAt(_index);
  }

  void updateAddCandidateToElectionAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _addCandidateToElection[_index] = updateFn(_addCandidateToElection[_index]);
  }

  void insertAtIndexInAddCandidateToElection(int _index, String _value) {
    _addCandidateToElection.insert(_index, _value);
  }

  List<String> _addElecComtoElection = [];
  List<String> get addElecComtoElection => _addElecComtoElection;
  set addElecComtoElection(List<String> _value) {
    _addElecComtoElection = _value;
  }

  void addToAddElecComtoElection(String _value) {
    _addElecComtoElection.add(_value);
  }

  void removeFromAddElecComtoElection(String _value) {
    _addElecComtoElection.remove(_value);
  }

  void removeAtIndexFromAddElecComtoElection(int _index) {
    _addElecComtoElection.removeAt(_index);
  }

  void updateAddElecComtoElectionAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _addElecComtoElection[_index] = updateFn(_addElecComtoElection[_index]);
  }

  void insertAtIndexInAddElecComtoElection(int _index, String _value) {
    _addElecComtoElection.insert(_index, _value);
  }

  List<String> _addVoterToElection = [];
  List<String> get addVoterToElection => _addVoterToElection;
  set addVoterToElection(List<String> _value) {
    _addVoterToElection = _value;
  }

  void addToAddVoterToElection(String _value) {
    _addVoterToElection.add(_value);
  }

  void removeFromAddVoterToElection(String _value) {
    _addVoterToElection.remove(_value);
  }

  void removeAtIndexFromAddVoterToElection(int _index) {
    _addVoterToElection.removeAt(_index);
  }

  void updateAddVoterToElectionAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _addVoterToElection[_index] = updateFn(_addVoterToElection[_index]);
  }

  void insertAtIndexInAddVoterToElection(int _index, String _value) {
    _addVoterToElection.insert(_index, _value);
  }

  String _electionID = '';
  String get electionID => _electionID;
  set electionID(String _value) {
    _electionID = _value;
  }

  String _addedElecComWalletID = '';
  String get addedElecComWalletID => _addedElecComWalletID;
  set addedElecComWalletID(String _value) {
    _addedElecComWalletID = _value;
  }

  String _cityID = '';
  String get cityID => _cityID;
  set cityID(String _value) {
    _cityID = _value;
  }

  String _districtID = '';
  String get districtID => _districtID;
  set districtID(String _value) {
    _districtID = _value;
  }

  String _countryID = '';
  String get countryID => _countryID;
  set countryID(String _value) {
    _countryID = _value;
  }

  String _neighborhoodID = '';
  String get neighborhoodID => _neighborhoodID;
  set neighborhoodID(String _value) {
    _neighborhoodID = _value;
  }

  List<String> _userDistrictIDs = [];
  List<String> get userDistrictIDs => _userDistrictIDs;
  set userDistrictIDs(List<String> _value) {
    _userDistrictIDs = _value;
  }

  void addToUserDistrictIDs(String _value) {
    _userDistrictIDs.add(_value);
  }

  void removeFromUserDistrictIDs(String _value) {
    _userDistrictIDs.remove(_value);
  }

  void removeAtIndexFromUserDistrictIDs(int _index) {
    _userDistrictIDs.removeAt(_index);
  }

  void updateUserDistrictIDsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _userDistrictIDs[_index] = updateFn(_userDistrictIDs[_index]);
  }

  void insertAtIndexInUserDistrictIDs(int _index, String _value) {
    _userDistrictIDs.insert(_index, _value);
  }

  String _voterPrivKey = '';
  String get voterPrivKey => _voterPrivKey;
  set voterPrivKey(String _value) {
    _voterPrivKey = _value;
  }

  String _electionDistrict = '';
  String get electionDistrict => _electionDistrict;
  set electionDistrict(String _value) {
    _electionDistrict = _value;
  }

  List<String> _candidateNames = [];
  List<String> get candidateNames => _candidateNames;
  set candidateNames(List<String> _value) {
    _candidateNames = _value;
  }

  void addToCandidateNames(String _value) {
    _candidateNames.add(_value);
  }

  void removeFromCandidateNames(String _value) {
    _candidateNames.remove(_value);
  }

  void removeAtIndexFromCandidateNames(int _index) {
    _candidateNames.removeAt(_index);
  }

  void updateCandidateNamesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _candidateNames[_index] = updateFn(_candidateNames[_index]);
  }

  void insertAtIndexInCandidateNames(int _index, String _value) {
    _candidateNames.insert(_index, _value);
  }
}
