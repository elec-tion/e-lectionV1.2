import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'delete_candidate_oy_panel_widget.dart'
    show DeleteCandidateOyPanelWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeleteCandidateOyPanelModel
    extends FlutterFlowModel<DeleteCandidateOyPanelWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getElectionDetails)] action in Button widget.
  ApiCallResponse? candidateAlmaca;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
