import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_com_mem_oy_panel_widget.dart' show AddComMemOyPanelWidget;
import 'package:flutter/material.dart';

class AddComMemOyPanelModel extends FlutterFlowModel<AddComMemOyPanelWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for comMemWalletID widget.
  FocusNode? comMemWalletIDFocusNode;
  TextEditingController? comMemWalletIDTextController;
  String? Function(BuildContext, String?)?
      comMemWalletIDTextControllerValidator;
  // Stores action output result for [Backend Call - API (getElectionCommitteeMemberDetails)] action in Button widget.
  ApiCallResponse? comVarMi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    comMemWalletIDFocusNode?.dispose();
    comMemWalletIDTextController?.dispose();
  }
}
