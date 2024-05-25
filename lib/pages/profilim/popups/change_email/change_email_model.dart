import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'change_email_widget.dart' show ChangeEmailWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangeEmailModel extends FlutterFlowModel<ChangeEmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for guncelleEmail widget.
  FocusNode? guncelleEmailFocusNode;
  TextEditingController? guncelleEmailTextController;
  String? Function(BuildContext, String?)? guncelleEmailTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? emailUpdate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    guncelleEmailFocusNode?.dispose();
    guncelleEmailTextController?.dispose();
  }
}
