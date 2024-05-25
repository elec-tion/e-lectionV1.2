import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/oylama/oy_kullan/stats_n_a/stats_n_a_widget.dart';
import '/pages/oylama/oy_kullan/voting_desc/voting_desc_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'oy_kullan_p1given_widget.dart' show OyKullanP1givenWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OyKullanP1givenModel extends FlutterFlowModel<OyKullanP1givenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
