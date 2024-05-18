import '/flutter_flow/flutter_flow_util.dart';
import 'oy_paneli_p2_widget.dart' show OyPaneliP2Widget;
import 'package:flutter/material.dart';

class OyPaneliP2Model extends FlutterFlowModel<OyPaneliP2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for electionsTabBar widget.
  TabController? electionsTabBarController;
  int get electionsTabBarCurrentIndex =>
      electionsTabBarController != null ? electionsTabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    electionsTabBarController?.dispose();
  }
}
