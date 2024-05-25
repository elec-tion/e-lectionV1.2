import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'oylama_olustur_p2_widget.dart' show OylamaOlusturP2Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OylamaOlusturP2Model extends FlutterFlowModel<OylamaOlusturP2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for createVotingNameOfVoting widget.
  FocusNode? createVotingNameOfVotingFocusNode;
  TextEditingController? createVotingNameOfVotingTextController;
  String? Function(BuildContext, String?)?
      createVotingNameOfVotingTextControllerValidator;
  // State field(s) for createVotingDetailsOfVoting widget.
  FocusNode? createVotingDetailsOfVotingFocusNode;
  TextEditingController? createVotingDetailsOfVotingTextController;
  String? Function(BuildContext, String?)?
      createVotingDetailsOfVotingTextControllerValidator;
  DateTime? datePicked1;
  // Stores action output result for [Custom Action - unixToDateTime] action in Button widget.
  String? startDateTime;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - unixToDateTime] action in Button widget.
  String? endDateTime;
  // Stores action output result for [Backend Call - Query Rows] action in createVotingContinue widget.
  List<ElectionsRow>? electionNameCheck;
  // Stores action output result for [Backend Call - API (createElection)] action in createVotingContinue widget.
  ApiCallResponse? getElectionID;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    createVotingNameOfVotingFocusNode?.dispose();
    createVotingNameOfVotingTextController?.dispose();

    createVotingDetailsOfVotingFocusNode?.dispose();
    createVotingDetailsOfVotingTextController?.dispose();
  }
}
