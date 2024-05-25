import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'saat_tarih_degistir_popup_widget.dart'
    show SaatTarihDegistirPopupWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SaatTarihDegistirPopupModel
    extends FlutterFlowModel<SaatTarihDegistirPopupWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  // Stores action output result for [Custom Action - unixToDateTime] action in Button widget.
  String? startDateTime;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - unixToDateTime] action in Button widget.
  String? endDateTime;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
