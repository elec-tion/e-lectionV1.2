import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'add_candidate_widget.dart' show AddCandidateWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
