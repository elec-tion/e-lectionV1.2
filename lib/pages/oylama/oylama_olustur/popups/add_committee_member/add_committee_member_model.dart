import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_committee_member_widget.dart' show AddCommitteeMemberWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCommitteeMemberModel
    extends FlutterFlowModel<AddCommitteeMemberWidget> {
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
