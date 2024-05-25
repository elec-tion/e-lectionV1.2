import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/oylama/oy_paneli/popups/add_candidate_oy_panel/add_candidate_oy_panel_widget.dart';
import '/pages/oylama/oy_paneli/popups/add_com_mem_oy_panel/add_com_mem_oy_panel_widget.dart';
import '/pages/oylama/oy_paneli/popups/delete_candidate_oy_panel/delete_candidate_oy_panel_widget.dart';
import '/pages/oylama/oy_paneli/popups/delete_com_mem_oy_panel/delete_com_mem_oy_panel_widget.dart';
import '/pages/oylama/oy_paneli/popups/saat_tarih_degistir_popup/saat_tarih_degistir_popup_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'oy_paneli_p2_widget.dart' show OyPaneliP2Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
