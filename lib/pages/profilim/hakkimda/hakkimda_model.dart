import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/profilim/popups/change_email/change_email_widget.dart';
import '/pages/profilim/popups/change_phone_number/change_phone_number_widget.dart';
import '/pages/profilim/popups/delete_account/delete_account_widget.dart';
import 'hakkimda_widget.dart' show HakkimdaWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
