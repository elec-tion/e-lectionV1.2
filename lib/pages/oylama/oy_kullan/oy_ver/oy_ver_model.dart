import '/flutter_flow/flutter_flow_util.dart';
import 'oy_ver_widget.dart' show OyVerWidget;
import 'package:flutter/material.dart';

class OyVerModel extends FlutterFlowModel<OyVerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
