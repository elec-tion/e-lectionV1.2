import '/flutter_flow/flutter_flow_util.dart';
import 'oy_paneli_widget.dart' show OyPaneliWidget;
import 'package:flutter/material.dart';

class OyPaneliModel extends FlutterFlowModel<OyPaneliWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
