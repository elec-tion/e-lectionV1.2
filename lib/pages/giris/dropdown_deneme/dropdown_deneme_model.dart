import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dropdown_deneme_widget.dart' show DropdownDenemeWidget;
import 'package:flutter/material.dart';

class DropdownDenemeModel extends FlutterFlowModel<DropdownDenemeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<DistrictsRow>? countryIDOut;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<DistrictsRow>? cityIDOut;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<DistrictsRow>? districtIDOut;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
