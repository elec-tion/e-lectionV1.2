import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/oylama/oylama_olustur/popups/add_candidate/add_candidate_widget.dart';
import '/pages/oylama/oylama_olustur/popups/add_committee_member/add_committee_member_widget.dart';
import '/pages/oylama/oylama_olustur/popups/delete_candidate/delete_candidate_widget.dart';
import '/pages/oylama/oylama_olustur/popups/delete_elec_com_member/delete_elec_com_member_widget.dart';
import 'oylama_olustur_p4_widget.dart' show OylamaOlusturP4Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OylamaOlusturP4Model extends FlutterFlowModel<OylamaOlusturP4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for addYourselfAsEleComMem widget.
  bool? addYourselfAsEleComMemValue;
  // State field(s) for createVoteAgreeDataCheckbox widget.
  bool? createVoteAgreeDataCheckboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
