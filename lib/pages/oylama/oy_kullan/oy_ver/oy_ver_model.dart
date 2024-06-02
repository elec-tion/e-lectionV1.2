import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'oy_ver_widget.dart' show OyVerWidget;
import 'package:flutter/material.dart';

class OyVerModel extends FlutterFlowModel<OyVerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (isVoterElected)] action in Column widget.
  ApiCallResponse? isVoterElectedCopy;
  // Stores action output result for [Backend Call - API (isVoterElected)] action in Column widget.
  ApiCallResponse? isVoterElected;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
