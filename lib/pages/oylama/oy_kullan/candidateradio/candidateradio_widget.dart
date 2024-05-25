import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'candidateradio_model.dart';
export 'candidateradio_model.dart';

class CandidateradioWidget extends StatefulWidget {
  const CandidateradioWidget({
    super.key,
    this.candrad,
  });

  final ElectionsRow? candrad;

  @override
  State<CandidateradioWidget> createState() => _CandidateradioWidgetState();
}

class _CandidateradioWidgetState extends State<CandidateradioWidget> {
  late CandidateradioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CandidateradioModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CandidatesRow>>(
      future: CandidatesTable().querySingleRow(
        queryFn: (q) => q.in_(
          'wallet_id',
          widget.candrad!.candidatesWalletId,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).mavi,
                ),
              ),
            ),
          );
        }
        List<CandidatesRow> radioButtonCandidatesRowList = snapshot.data!;
        final radioButtonCandidatesRow = radioButtonCandidatesRowList.isNotEmpty
            ? radioButtonCandidatesRowList.first
            : null;
        return FlutterFlowRadioButton(
          options: widget.candrad!.candidatesWalletId.toList(),
          onChanged: (val) => setState(() {}),
          controller: _model.radioButtonValueController ??=
              FormFieldController<String>(null),
          optionHeight: 35.0,
          textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Montserrat',
                letterSpacing: 0.0,
              ),
          selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Montserrat',
                letterSpacing: 0.0,
              ),
          buttonPosition: RadioButtonPosition.right,
          direction: Axis.vertical,
          radioButtonColor: FlutterFlowTheme.of(context).primary,
          inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
          toggleable: true,
          horizontalAlignment: WrapAlignment.start,
          verticalAlignment: WrapCrossAlignment.center,
        );
      },
    );
  }
}
