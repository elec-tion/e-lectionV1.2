import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'oy_kullan_p4_pusula_widget.dart' show OyKullanP4PusulaWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OyKullanP4PusulaModel extends FlutterFlowModel<OyKullanP4PusulaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Timer widget.
  int timerMilliseconds = 30000;
  String timerValue = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Check1 widget.

  Map<CandidatesRow, bool> check1ValueMap1 = {};
  List<CandidatesRow> get check1CheckedItems1 =>
      check1ValueMap1.entries.where((e) => e.value).map((e) => e.key).toList();

  // State field(s) for Check1 widget.
  bool? check1Value2;
  // State field(s) for Check2 widget.
  bool? check2Value1;
  // State field(s) for Check2 widget.
  bool? check2Value2;
  // State field(s) for Check2 widget.
  bool? check2Value3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    timerController.dispose();
  }

  /// Action blocks.
  Future stoptimer(BuildContext context) async {}
}
