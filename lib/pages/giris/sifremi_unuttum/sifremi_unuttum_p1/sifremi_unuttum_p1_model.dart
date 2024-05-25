import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'sifremi_unuttum_p1_widget.dart' show SifremiUnuttumP1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SifremiUnuttumP1Model extends FlutterFlowModel<SifremiUnuttumP1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for sifreUnuttumID widget.
  FocusNode? sifreUnuttumIDFocusNode;
  TextEditingController? sifreUnuttumIDTextController;
  String? Function(BuildContext, String?)?
      sifreUnuttumIDTextControllerValidator;
  // Stores action output result for [Custom Action - hashingIDPassword] action in Button widget.
  String? hashedIDCheck;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? iDvarMi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    sifreUnuttumIDFocusNode?.dispose();
    sifreUnuttumIDTextController?.dispose();
  }
}
