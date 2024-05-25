import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/oylama/oylama_olustur/popups/add_voter/add_voter_widget.dart';
import '/pages/oylama/oylama_olustur/popups/delete_voter/delete_voter_widget.dart';
import '/pages/oylama/oylama_olustur/popups/voter_popup/voter_popup_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'oylama_olustur_p3_widget.dart' show OylamaOlusturP3Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OylamaOlusturP3Model extends FlutterFlowModel<OylamaOlusturP3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for regionalElection widget.
  bool? regionalElectionValue;
  // State field(s) for customElection widget.
  bool? customElectionValue;
  // State field(s) for addMyselfVoter widget.
  bool? addMyselfVoterValue;
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
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<DistrictsRow>? neighIDOut;
  // State field(s) for createVoteAgreeDataCheckbox widget.
  bool? createVoteAgreeDataCheckboxValue;
  // Stores action output result for [Backend Call - API (getDistrict)] action in createVotingContinue widget.
  ApiCallResponse? countryVarMi;
  // Stores action output result for [Backend Call - API (getDistrict)] action in createVotingContinue widget.
  ApiCallResponse? cityVarMi;
  // Stores action output result for [Backend Call - API (getDistrict)] action in createVotingContinue widget.
  ApiCallResponse? districtVarMi;
  // Stores action output result for [Backend Call - API (getDistrict)] action in createVotingContinue widget.
  ApiCallResponse? neighborhoodVarMi;
  // Stores action output result for [Backend Call - API (addDistrictToElection)] action in createVotingContinue widget.
  ApiCallResponse? sendNeigh;
  // Stores action output result for [Backend Call - API (addDistrictToElection)] action in createVotingContinue widget.
  ApiCallResponse? sendDistrict;
  // Stores action output result for [Backend Call - API (addDistrictToElection)] action in createVotingContinue widget.
  ApiCallResponse? sendCity;
  // Stores action output result for [Backend Call - API (addDistrictToElection)] action in createVotingContinue widget.
  ApiCallResponse? sendCountry;
  // Stores action output result for [Backend Call - API (addDistrictToElection)] action in createVotingContinue widget.
  ApiCallResponse? sendCountry3;
  // Stores action output result for [Backend Call - API (addDistrictToElection)] action in createVotingContinue widget.
  ApiCallResponse? sendCountry2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
