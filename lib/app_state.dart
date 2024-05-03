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

  String _userElecComWalletID = '';
  String get userElecComWalletID => _userElecComWalletID;
  set userElecComWalletID(String value) {
    _userElecComWalletID = value;
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

  List<String> _deneme = [];
  List<String> get deneme => _deneme;
  set deneme(List<String> value) {
    _deneme = value;
  }

  void addToDeneme(String value) {
    _deneme.add(value);
  }

  void removeFromDeneme(String value) {
    _deneme.remove(value);
  }

  void removeAtIndexFromDeneme(int index) {
    _deneme.removeAt(index);
  }

  void updateDenemeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _deneme[index] = updateFn(_deneme[index]);
  }

  void insertAtIndexInDeneme(int index, String value) {
    _deneme.insert(index, value);
  }
}
