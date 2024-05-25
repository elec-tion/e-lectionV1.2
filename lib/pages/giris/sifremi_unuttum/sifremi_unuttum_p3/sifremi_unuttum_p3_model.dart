import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'sifremi_unuttum_p3_widget.dart' show SifremiUnuttumP3Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SifremiUnuttumP3Model extends FlutterFlowModel<SifremiUnuttumP3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for sifreDegistir widget.
  FocusNode? sifreDegistirFocusNode;
  TextEditingController? sifreDegistirTextController;
  late bool sifreDegistirVisibility;
  String? Function(BuildContext, String?)? sifreDegistirTextControllerValidator;
  // State field(s) for sifreDegistirTekrar widget.
  FocusNode? sifreDegistirTekrarFocusNode;
  TextEditingController? sifreDegistirTekrarTextController;
  late bool sifreDegistirTekrarVisibility;
  String? Function(BuildContext, String?)?
      sifreDegistirTekrarTextControllerValidator;
  // Stores action output result for [Custom Action - hashingIDPassword] action in Button widget.
  String? hashedPassword;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? sifreDBCheck;

  @override
  void initState(BuildContext context) {
    sifreDegistirVisibility = false;
    sifreDegistirTekrarVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sifreDegistirFocusNode?.dispose();
    sifreDegistirTextController?.dispose();

    sifreDegistirTekrarFocusNode?.dispose();
    sifreDegistirTekrarTextController?.dispose();
  }
}
