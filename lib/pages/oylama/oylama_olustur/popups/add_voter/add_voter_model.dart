import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_voter_widget.dart' show AddVoterWidget;
import 'package:flutter/material.dart';

class AddVoterModel extends FlutterFlowModel<AddVoterWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for voterWalletID widget.
  FocusNode? voterWalletIDFocusNode;
  TextEditingController? voterWalletIDTextController;
  String? Function(BuildContext, String?)? voterWalletIDTextControllerValidator;
  // Stores action output result for [Backend Call - API (getVoterDetails)] action in Button widget.
  ApiCallResponse? voterVarMi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    voterWalletIDFocusNode?.dispose();
    voterWalletIDTextController?.dispose();
  }
}
