import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'giris_widget.dart' show GirisWidget;
import 'package:flutter/material.dart';

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
