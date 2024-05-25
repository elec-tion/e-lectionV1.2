import '/flutter_flow/flutter_flow_util.dart';
import 'oylama_adaylar_widget.dart' show OylamaAdaylarWidget;
import 'package:flutter/material.dart';

class OylamaAdaylarModel extends FlutterFlowModel<OylamaAdaylarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
