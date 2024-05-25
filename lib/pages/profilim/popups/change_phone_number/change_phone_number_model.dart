import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'change_phone_number_widget.dart' show ChangePhoneNumberWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ChangePhoneNumberModel extends FlutterFlowModel<ChangePhoneNumberWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for guncelleTelefon widget.
  FocusNode? guncelleTelefonFocusNode;
  TextEditingController? guncelleTelefonTextController;
  final guncelleTelefonMask =
      MaskTextInputFormatter(mask: '+9# (###) ### ## ##');
  String? Function(BuildContext, String?)?
      guncelleTelefonTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? emailUpdate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    guncelleTelefonFocusNode?.dispose();
    guncelleTelefonTextController?.dispose();
  }
}
