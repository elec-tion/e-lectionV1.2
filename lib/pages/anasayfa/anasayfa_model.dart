import '/flutter_flow/flutter_flow_util.dart';
import 'anasayfa_widget.dart' show AnasayfaWidget;
import 'package:flutter/material.dart';

class AnasayfaModel extends FlutterFlowModel<AnasayfaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
