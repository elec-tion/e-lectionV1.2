import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'bilgi_guncelleme_p1_widget.dart' show BilgiGuncellemeP1Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class BilgiGuncellemeP1Model extends FlutterFlowModel<BilgiGuncellemeP1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for guncelleIsim widget.
  FocusNode? guncelleIsimFocusNode;
  TextEditingController? guncelleIsimTextController;
  String? Function(BuildContext, String?)? guncelleIsimTextControllerValidator;
  // State field(s) for guncelleSoyad widget.
  FocusNode? guncelleSoyadFocusNode;
  TextEditingController? guncelleSoyadTextController;
  String? Function(BuildContext, String?)? guncelleSoyadTextControllerValidator;
  // State field(s) for guncelleEmail widget.
  FocusNode? guncelleEmailFocusNode;
  TextEditingController? guncelleEmailTextController;
  String? Function(BuildContext, String?)? guncelleEmailTextControllerValidator;
  // State field(s) for guncelleTelefon widget.
  FocusNode? guncelleTelefonFocusNode;
  TextEditingController? guncelleTelefonTextController;
  final guncelleTelefonMask =
      MaskTextInputFormatter(mask: '+9# (###) ### ## ##');
  String? Function(BuildContext, String?)?
      guncelleTelefonTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? mailTest;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? telTest;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    guncelleIsimFocusNode?.dispose();
    guncelleIsimTextController?.dispose();

    guncelleSoyadFocusNode?.dispose();
    guncelleSoyadTextController?.dispose();

    guncelleEmailFocusNode?.dispose();
    guncelleEmailTextController?.dispose();

    guncelleTelefonFocusNode?.dispose();
    guncelleTelefonTextController?.dispose();
  }
}
