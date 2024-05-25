import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'giris_widget.dart' show GirisWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GirisModel extends FlutterFlowModel<GirisWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Custom Action - hashingIDPassword] action in Button widget.
  String? girisHashedID;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? idCheck;
  // Stores action output result for [Custom Action - hashingIDPassword] action in Button widget.
  String? girisHashedPassword;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? loginControl;
  // State field(s) for idCreate widget.
  FocusNode? idCreateFocusNode;
  TextEditingController? idCreateTextController;
  String? Function(BuildContext, String?)? idCreateTextControllerValidator;
  // State field(s) for passwordCreate widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // Stores action output result for [Custom Action - hashingIDPassword] action in getStartedButton widget.
  String? hashedIDCheck;
  // Stores action output result for [Backend Call - Query Rows] action in getStartedButton widget.
  List<UsersRow>? idTest;
  // Stores action output result for [Custom Action - hashingIDPassword] action in getStartedButton widget.
  String? hashedID;
  // Stores action output result for [Custom Action - hashingIDPassword] action in getStartedButton widget.
  String? hashedPassword;
  // Stores action output result for [Custom Action - createPrivateKey] action in getStartedButton widget.
  String? privateKeyVoter;
  // Stores action output result for [Custom Action - createPrivateKey] action in getStartedButton widget.
  String? privateKeyECom;
  // Stores action output result for [Custom Action - createWalletID] action in getStartedButton widget.
  String? walletIDVoter;
  // Stores action output result for [Custom Action - createWalletID] action in getStartedButton widget.
  String? walletIDECom;
  // Stores action output result for [Backend Call - Insert Row] action in getStartedButton widget.
  UsersRow? createAccount;
  // Stores action output result for [Backend Call - API (getContractAddress)] action in getStartedButton widget.
  ApiCallResponse? contractAddressJSON;
  // Stores action output result for [Backend Call - API (getContractAbi)] action in getStartedButton widget.
  ApiCallResponse? contractAbiJSON;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    idFocusNode?.dispose();
    idTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    idCreateFocusNode?.dispose();
    idCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();
  }
}
