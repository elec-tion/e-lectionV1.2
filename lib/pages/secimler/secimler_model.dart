import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'secimler_widget.dart' show SecimlerWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
