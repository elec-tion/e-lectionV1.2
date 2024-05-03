import '/flutter_flow/flutter_flow_util.dart';
import 'hakkimda_widget.dart' show HakkimdaWidget;
import 'package:flutter/material.dart';

class HakkimdaModel extends FlutterFlowModel<HakkimdaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for walletIDVoter widget.
  FocusNode? walletIDVoterFocusNode;
  TextEditingController? walletIDVoterTextController;
  String? Function(BuildContext, String?)? walletIDVoterTextControllerValidator;
  // State field(s) for walletIDElectionCom widget.
  FocusNode? walletIDElectionComFocusNode;
  TextEditingController? walletIDElectionComTextController;
  String? Function(BuildContext, String?)?
      walletIDElectionComTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    walletIDVoterFocusNode?.dispose();
    walletIDVoterTextController?.dispose();

    walletIDElectionComFocusNode?.dispose();
    walletIDElectionComTextController?.dispose();
  }
}
