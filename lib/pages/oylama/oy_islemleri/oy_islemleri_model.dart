import '/flutter_flow/flutter_flow_util.dart';
import 'oy_islemleri_widget.dart' show OyIslemleriWidget;
import 'package:flutter/material.dart';

class OyIslemleriModel extends FlutterFlowModel<OyIslemleriWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
