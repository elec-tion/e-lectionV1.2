import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sifremi_unuttum_p2_widget.dart' show SifremiUnuttumP2Widget;
import 'package:flutter/material.dart';

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
