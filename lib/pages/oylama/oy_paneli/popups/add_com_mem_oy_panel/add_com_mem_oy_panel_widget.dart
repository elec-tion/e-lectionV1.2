import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_com_mem_oy_panel_model.dart';
export 'add_com_mem_oy_panel_model.dart';

class AddComMemOyPanelWidget extends StatefulWidget {
  const AddComMemOyPanelWidget({super.key});

  @override
  State<AddComMemOyPanelWidget> createState() => _AddComMemOyPanelWidgetState();
}

class _AddComMemOyPanelWidgetState extends State<AddComMemOyPanelWidget> {
  late AddComMemOyPanelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddComMemOyPanelModel());

    _model.comMemWalletIDTextController ??= TextEditingController();
    _model.comMemWalletIDFocusNode ??= FocusNode();
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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 15.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderColor: Color(0x004B39EF),
                  borderRadius: 20.0,
                  buttonSize: 50.0,
                  fillColor: Color(0x004B39EF),
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
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 40.0, 10.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '6ls4dzd9' /* Enter the committee member's w... */,
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
                      EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 30.0),
                  child: Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.comMemWalletIDTextController,
                      focusNode: _model.comMemWalletIDFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
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
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).text1,
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.center,
                      cursorColor: FlutterFlowTheme.of(context).text1,
                      validator: _model.comMemWalletIDTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),

                // container that is for sign in button
                Container(
                  width: 180.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    boxShadow: [
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
                      stops: [0.0, 1.0, 1.0],
                      begin: AlignmentDirectional(1.0, 0.0),
                      end: AlignmentDirectional(-1.0, 0),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: FutureBuilder<ApiCallResponse>(
                    future: CommitteeMemberGroup
                        .getElectionCommitteeMemberDetailsCall
                        .call(
                      wallet: _model.comMemWalletIDTextController.text,
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
                      final buttonGetElectionCommitteeMemberDetailsResponse =
                          snapshot.data!;
                      return FFButtonWidget(
                        onPressed: () async {
                          if (FFAppState().addElecComtoElection.contains(
                                  _model.comMemWalletIDTextController.text) ==
                              true) {
                            if (FFLocalizations.of(context).languageCode ==
                                'en') {
                              // enAlert
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text(
                                        'You can\'t add this election committe member!'),
                                    content: Text(
                                        'You have already added this person to the election.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('OK'),
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
                                    title: Text('Bu Sorumluyu Ekleyemezsin!'),
                                    content: Text(
                                        'Bu sorumluyu zaten oylamaya eklediniz.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Tamam'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          } else {
                            if (_model.comMemWalletIDTextController.text !=
                                    null &&
                                _model.comMemWalletIDTextController.text !=
                                    '') {
                              _model.comVarMi = await CommitteeMemberGroup
                                  .getElectionCommitteeMemberDetailsCall
                                  .call(
                                wallet:
                                    _model.comMemWalletIDTextController.text,
                              );
                              if (getJsonField(
                                    (_model.comVarMi?.jsonBody ?? ''),
                                    r'''$["wallet"]''',
                                  ) !=
                                  null) {
                                FFAppState().update(() {
                                  FFAppState().addToAddElecComtoElection(
                                      _model.comMemWalletIDTextController.text);
                                });
                                await ElectionsTable().update(
                                  data: {
                                    'committee_members':
                                        FFAppState().addElecComtoElection,
                                  },
                                  matchingRows: (rows) => rows.eq(
                                    'name',
                                    FFAppState().electionName,
                                  ),
                                );
                                await CommitteeMemberGroup
                                    .addElectionCommitteeMemberToElectionCall
                                    .call(
                                  electionID: FFAppState().electionID,
                                  wallet:
                                      _model.comMemWalletIDTextController.text,
                                );
                                Navigator.pop(context);
                              } else {
                                if (FFLocalizations.of(context).languageCode ==
                                    'en') {
                                  // enAlert
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text(
                                            'You cannot add committee member!'),
                                        content: Text(
                                            'The election committee member\'s wallet number you want to add is not available in e-lection. Please try again.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('OK'),
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
                                        title: Text('Sorumlu Ekleyemezsin!'),
                                        content: Text(
                                            'Eklemek istediğiniz sorumlu cüzdan numarası e-lection\'da bulunmamaktadır. Lütfen tekrar deneyin.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Tamam'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                setState(() {
                                  _model.comMemWalletIDTextController?.clear();
                                });
                              }
                            } else {
                              if (FFLocalizations.of(context).languageCode ==
                                  'en') {
                                // enAlert
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text(
                                          'You didn\'t add committee member!'),
                                      content: Text(
                                          'You didn\'t add committee member, please add a committee member.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('OK'),
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
                                      title: Text('Sorumlu Eklemedin!'),
                                      content: Text(
                                          'Oylamanıza sorumlu eklemediniz. Lütfen tekrar deneyin.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Tamam'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            }
                          }

                          setState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'u5v6ewah' /* Save */,
                        ),
                        options: FFButtonOptions(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0x00067BB7),
                          textStyle:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      );
                    },
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
