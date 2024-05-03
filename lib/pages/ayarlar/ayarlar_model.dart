import '/flutter_flow/flutter_flow_util.dart';
import 'ayarlar_widget.dart' show AyarlarWidget;
import 'package:flutter/material.dart';

class AyarlarModel extends FlutterFlowModel<AyarlarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
