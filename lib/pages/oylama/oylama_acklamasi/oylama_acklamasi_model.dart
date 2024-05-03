import '/flutter_flow/flutter_flow_util.dart';
import 'oylama_acklamasi_widget.dart' show OylamaAcklamasiWidget;
import 'package:flutter/material.dart';

class OylamaAcklamasiModel extends FlutterFlowModel<OylamaAcklamasiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
