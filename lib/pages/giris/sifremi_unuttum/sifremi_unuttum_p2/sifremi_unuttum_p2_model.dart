import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'sifremi_unuttum_p2_widget.dart' show SifremiUnuttumP2Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SifremiUnuttumP2Model extends FlutterFlowModel<SifremiUnuttumP2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for sifreUnuttumEmail widget.
  FocusNode? sifreUnuttumEmailFocusNode;
  TextEditingController? sifreUnuttumEmailTextController;
  String? Function(BuildContext, String?)?
      sifreUnuttumEmailTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? emailVarMi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    sifreUnuttumEmailFocusNode?.dispose();
    sifreUnuttumEmailTextController?.dispose();
  }
}
