import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bilgi_guncelleme_widget.dart' show BilgiGuncellemeWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BilgiGuncellemeModel extends FlutterFlowModel<BilgiGuncellemeWidget> {
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
