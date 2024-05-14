import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'anasayfa_widget.dart' show AnasayfaWidget;
import 'package:flutter/material.dart';

class AnasayfaModel extends FlutterFlowModel<AnasayfaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getContractAddress)] action in Text widget.
  ApiCallResponse? contractAddressJSON;
  // Stores action output result for [Backend Call - API (getContractAbi)] action in Text widget.
  ApiCallResponse? contractAbiJSON;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
