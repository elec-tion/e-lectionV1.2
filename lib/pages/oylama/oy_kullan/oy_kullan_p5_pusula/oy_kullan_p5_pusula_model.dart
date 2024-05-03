import '/flutter_flow/flutter_flow_util.dart';
import 'oy_kullan_p5_pusula_widget.dart' show OyKullanP5PusulaWidget;
import 'package:flutter/material.dart';

class OyKullanP5PusulaModel extends FlutterFlowModel<OyKullanP5PusulaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // State field(s) for givevotecheckbox widget.
  bool? givevotecheckboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
