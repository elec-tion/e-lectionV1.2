import '/flutter_flow/flutter_flow_util.dart';
import 'secimler_widget.dart' show SecimlerWidget;
import 'package:flutter/material.dart';

class SecimlerModel extends FlutterFlowModel<SecimlerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for electionSearch widget.
  FocusNode? electionSearchFocusNode;
  TextEditingController? electionSearchTextController;
  String? Function(BuildContext, String?)?
      electionSearchTextControllerValidator;
  // State field(s) for electionsTabBar widget.
  TabController? electionsTabBarController;
  int get electionsTabBarCurrentIndex =>
      electionsTabBarController != null ? electionsTabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    electionSearchFocusNode?.dispose();
    electionSearchTextController?.dispose();

    electionsTabBarController?.dispose();
  }

  /// Action blocks.
  Future deneme(BuildContext context) async {}
}
