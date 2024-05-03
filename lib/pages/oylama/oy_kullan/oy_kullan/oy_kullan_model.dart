import '/flutter_flow/flutter_flow_util.dart';
import 'oy_kullan_widget.dart' show OyKullanWidget;
import 'package:flutter/material.dart';

class OyKullanModel extends FlutterFlowModel<OyKullanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
