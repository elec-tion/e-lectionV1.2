import '/flutter_flow/flutter_flow_util.dart';
import 'oylama_olustur_p3_widget.dart' show OylamaOlusturP3Widget;
import 'package:flutter/material.dart';

class OylamaOlusturP3Model extends FlutterFlowModel<OylamaOlusturP3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for createVoteAgreeDataCheckbox widget.
  bool? createVoteAgreeDataCheckboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
