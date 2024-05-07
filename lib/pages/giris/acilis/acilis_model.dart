import '/flutter_flow/flutter_flow_util.dart';
import 'acilis_widget.dart' show AcilisWidget;
import 'package:flutter/material.dart';

class AcilisModel extends FlutterFlowModel<AcilisWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - checkInternetConnection] action in Acilis widget.
  bool? internetVarMi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
