import '/flutter_flow/flutter_flow_util.dart';
import 'add_candidate_widget.dart' show AddCandidateWidget;
import 'package:flutter/material.dart';

class AddCandidateModel extends FlutterFlowModel<AddCandidateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for candidateName widget.
  FocusNode? candidateNameFocusNode;
  TextEditingController? candidateNameTextController;
  String? Function(BuildContext, String?)? candidateNameTextControllerValidator;
  // State field(s) for candidateSurname widget.
  FocusNode? candidateSurnameFocusNode;
  TextEditingController? candidateSurnameTextController;
  String? Function(BuildContext, String?)?
      candidateSurnameTextControllerValidator;
  // Stores action output result for [Custom Action - createCandidatePrivateKey] action in Button widget.
  String? candidatePrivateKey;
  // Stores action output result for [Custom Action - createWalletID] action in Button widget.
  String? candidateWalletID;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    candidateNameFocusNode?.dispose();
    candidateNameTextController?.dispose();

    candidateSurnameFocusNode?.dispose();
    candidateSurnameTextController?.dispose();
  }
}
