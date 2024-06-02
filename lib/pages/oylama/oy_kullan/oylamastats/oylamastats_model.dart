import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'oylamastats_widget.dart' show OylamastatsWidget;
import 'package:flutter/material.dart';

class OylamastatsModel extends FlutterFlowModel<OylamastatsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getCandidate)] action in Oylamastats widget.
  ApiCallResponse? candidateVote;
  // State field(s) for piechart widget.
  TabController? piechartController;
  int get piechartCurrentIndex =>
      piechartController != null ? piechartController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    piechartController?.dispose();
  }
}
