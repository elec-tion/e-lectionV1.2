import '/flutter_flow/flutter_flow_util.dart';
import 'oylama_olustur_p1_widget.dart' show OylamaOlusturP1Widget;
import 'package:flutter/material.dart';

class OylamaOlusturP1Model extends FlutterFlowModel<OylamaOlusturP1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for createVotingWarningCheckbox widget.
  bool? createVotingWarningCheckboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
