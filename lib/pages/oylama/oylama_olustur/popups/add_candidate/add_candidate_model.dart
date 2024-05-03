import '/flutter_flow/flutter_flow_util.dart';
import 'add_candidate_widget.dart' show AddCandidateWidget;
import 'package:flutter/material.dart';

class AddCandidateModel extends FlutterFlowModel<AddCandidateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for comMemName widget.
  FocusNode? comMemNameFocusNode;
  TextEditingController? comMemNameTextController;
  String? Function(BuildContext, String?)? comMemNameTextControllerValidator;
  // State field(s) for comMemSurname widget.
  FocusNode? comMemSurnameFocusNode;
  TextEditingController? comMemSurnameTextController;
  String? Function(BuildContext, String?)? comMemSurnameTextControllerValidator;
  // Stores action output result for [Custom Action - createCandidatePrivateKey] action in Button widget.
  String? candidatePrivateKey;
  // Stores action output result for [Custom Action - createWalletID] action in Button widget.
  String? candidateWalletID;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    comMemNameFocusNode?.dispose();
    comMemNameTextController?.dispose();

    comMemSurnameFocusNode?.dispose();
    comMemSurnameTextController?.dispose();
  }
}
