import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'sifremi_degistir_widget.dart' show SifremiDegistirWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SifremiDegistirModel extends FlutterFlowModel<SifremiDegistirWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for eskiSifre widget.
  FocusNode? eskiSifreFocusNode;
  TextEditingController? eskiSifreTextController;
  late bool eskiSifreVisibility;
  String? Function(BuildContext, String?)? eskiSifreTextControllerValidator;
  // State field(s) for yeniSifre1 widget.
  FocusNode? yeniSifre1FocusNode;
  TextEditingController? yeniSifre1TextController;
  late bool yeniSifre1Visibility;
  String? Function(BuildContext, String?)? yeniSifre1TextControllerValidator;
  // State field(s) for yeniSifre2 widget.
  FocusNode? yeniSifre2FocusNode;
  TextEditingController? yeniSifre2TextController;
  late bool yeniSifre2Visibility;
  String? Function(BuildContext, String?)? yeniSifre2TextControllerValidator;
  // Stores action output result for [Custom Action - hashingIDPassword] action in Button widget.
  String? eskiSifreCheck;
  // Stores action output result for [Custom Action - hashingIDPassword] action in Button widget.
  String? yeniSifre;

  @override
  void initState(BuildContext context) {
    eskiSifreVisibility = false;
    yeniSifre1Visibility = false;
    yeniSifre2Visibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    eskiSifreFocusNode?.dispose();
    eskiSifreTextController?.dispose();

    yeniSifre1FocusNode?.dispose();
    yeniSifre1TextController?.dispose();

    yeniSifre2FocusNode?.dispose();
    yeniSifre2TextController?.dispose();
  }
}
