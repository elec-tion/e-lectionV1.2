import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'oylama_olustur_p2_widget.dart' show OylamaOlusturP2Widget;
import 'package:flutter/material.dart';

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
