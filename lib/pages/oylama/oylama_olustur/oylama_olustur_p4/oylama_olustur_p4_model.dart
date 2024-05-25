import '/flutter_flow/flutter_flow_util.dart';
import 'oylama_olustur_p4_widget.dart' show OylamaOlusturP4Widget;
import 'package:flutter/material.dart';

class OylamaOlusturP4Model extends FlutterFlowModel<OylamaOlusturP4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for addYourselfAsEleComMem widget.
  bool? addYourselfAsEleComMemValue;
  // State field(s) for createVoteAgreeDataCheckbox widget.
  bool? createVoteAgreeDataCheckboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
