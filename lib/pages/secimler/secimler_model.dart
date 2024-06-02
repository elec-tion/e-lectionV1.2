import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'secimler_widget.dart' show SecimlerWidget;
import 'package:flutter/material.dart';

class SecimlerModel extends FlutterFlowModel<SecimlerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for electionsTabBar widget.
  TabController? electionsTabBarController;
  int get electionsTabBarCurrentIndex =>
      electionsTabBarController != null ? electionsTabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (isVoterElected)] action in Column widget.
  ApiCallResponse? isVoterElected;
  // Stores action output result for [Backend Call - API (isVoterElected)] action in Column widget.
  ApiCallResponse? isVoterElected2;
  // Stores action output result for [Backend Call - API (isVoterElected)] action in Column widget.
  ApiCallResponse? isVoterElected3;
  // Stores action output result for [Backend Call - API (isVoterElected)] action in Column widget.
  ApiCallResponse? isVoterElected4;
  // Stores action output result for [Backend Call - API (isVoterElected)] action in Column widget.
  ApiCallResponse? isVoterElected5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    electionsTabBarController?.dispose();
  }

  /// Action blocks.
  Future deneme(BuildContext context) async {}
}
