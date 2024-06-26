import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_candidate_model.dart';
export 'add_candidate_model.dart';

class AddCandidateWidget extends StatefulWidget {
  const AddCandidateWidget({super.key});

  @override
  State<AddCandidateWidget> createState() => _AddCandidateWidgetState();
}

class _AddCandidateWidgetState extends State<AddCandidateWidget> {
  late AddCandidateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddCandidateModel());

    _model.candidateNameTextController ??= TextEditingController();
    _model.candidateNameFocusNode ??= FocusNode();

    _model.candidateSurnameTextController ??= TextEditingController();
    _model.candidateSurnameFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).background1,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 15.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderColor: const Color(0x004B39EF),
                  borderRadius: 20.0,
                  buttonSize: 50.0,
                  fillColor: const Color(0x004B39EF),
                  icon: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).mavi,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '0151bv8f' /* Enter the candidate informatio... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 30.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.candidateNameTextController,
                      focusNode: _model.candidateNameFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          '7s5bo6e2' /* Name */,
                        ),
                        labelStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context)
                                      .textfieldHintText,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).mavi,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).mavi,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).customColor2,
                        contentPadding: const EdgeInsets.all(10.0),
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).text1,
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.name,
                      cursorColor: FlutterFlowTheme.of(context).text1,
                      validator: _model.candidateNameTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 30.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.candidateSurnameTextController,
                      focusNode: _model.candidateSurnameFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'x0e06p7n' /* Surname */,
                        ),
                        labelStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context)
                                      .textfieldHintText,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).mavi,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).mavi,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).customColor2,
                        contentPadding: const EdgeInsets.all(10.0),
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).text1,
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.name,
                      cursorColor: FlutterFlowTheme.of(context).text1,
                      validator: _model.candidateSurnameTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),

                // container that is for sign in button
                Container(
                  width: 180.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).graSet11,
                        FlutterFlowTheme.of(context).graSet12,
                        FlutterFlowTheme.of(context).graSet13
                      ],
                      stops: const [0.0, 1.0, 1.0],
                      begin: const AlignmentDirectional(1.0, 0.0),
                      end: const AlignmentDirectional(-1.0, 0),
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if ((_model.candidateNameTextController.text != '') &&
                          (_model.candidateSurnameTextController.text !=
                                  '')) {
                        _model.candidatePrivateKey =
                            await actions.createCandidatePrivateKey(
                          '${_model.candidateNameTextController.text} ${_model.candidateSurnameTextController.text}',
                          random_data.randomString(
                            5,
                            10,
                            true,
                            true,
                            true,
                          ),
                        );
                        _model.candidateWalletID = await actions.createWalletID(
                          _model.candidatePrivateKey!,
                        );
                        FFAppState().addToAddCandidateToElection(
                            _model.candidateWalletID!);
                        FFAppState().addToCandidateNames(
                            '${_model.candidateNameTextController.text} ${_model.candidateSurnameTextController.text}');
                        FFAppState().update(() {});
                        if (FFAppState().electionDistrict != '') {
                          await CandidatesTable().insert({
                            'name':
                                '${_model.candidateNameTextController.text} ${_model.candidateSurnameTextController.text}',
                            'wallet_id': _model.candidateWalletID,
                            'district_id': FFAppState().electionDistrict,
                            'election_id': FFAppState().electionID,
                          });
                          await ElectionsTable().update(
                            data: {
                              'candidates_wallet_id':
                                  FFAppState().addCandidateToElection,
                            },
                            matchingRows: (rows) => rows.eq(
                              'id',
                              FFAppState().electionID,
                            ),
                          );
                          await CandidateGroup.addCandidateCall.call(
                            name:
                                '${_model.candidateNameTextController.text} ${_model.candidateSurnameTextController.text}',
                            districtID: FFAppState().electionDistrict,
                            wallet: _model.candidateWalletID,
                          );
                          await CandidateGroup.addCandidateToElectionCall.call(
                            electionID: FFAppState().electionID,
                            wallet: _model.candidateWalletID,
                          );
                          Navigator.pop(context);
                        } else {
                          await CandidatesTable().insert({
                            'name':
                                '${_model.candidateNameTextController.text} ${_model.candidateSurnameTextController.text}',
                            'wallet_id': _model.candidateWalletID,
                            'election_id': FFAppState().electionID,
                            'district_id': '00',
                          });
                          await ElectionsTable().update(
                            data: {
                              'candidates_wallet_id':
                                  FFAppState().addCandidateToElection,
                            },
                            matchingRows: (rows) => rows.eq(
                              'id',
                              FFAppState().electionID,
                            ),
                          );
                          await CandidateGroup.addCandidateCall.call(
                            name:
                                '${_model.candidateNameTextController.text} ${_model.candidateSurnameTextController.text}',
                            districtID: '00',
                            wallet: _model.candidateWalletID,
                          );
                          await CandidateGroup.addCandidateToElectionCall.call(
                            electionID: FFAppState().electionID,
                            wallet: _model.candidateWalletID,
                          );
                          Navigator.pop(context);
                        }
                      } else {
                        if (FFLocalizations.of(context).languageCode == 'en') {
                          // enAlert
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('You didn\'t add candidate!'),
                                content: const Text(
                                    'You didn\'t add candidate, please add a committee member.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          // trAlert
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Aday Eklemedin!'),
                                content: const Text(
                                    'Oylamanıza aday eklemediniz. Lütfen tekrar deneyin.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: const Text('Tamam'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      }

                      setState(() {});
                    },
                    text: FFLocalizations.of(context).getText(
                      'fykbdbmc' /* Save */,
                    ),
                    options: FFButtonOptions(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0x00067BB7),
                      textStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).info,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
