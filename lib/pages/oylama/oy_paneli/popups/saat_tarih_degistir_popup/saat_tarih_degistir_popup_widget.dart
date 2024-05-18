import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'saat_tarih_degistir_popup_model.dart';
export 'saat_tarih_degistir_popup_model.dart';

class SaatTarihDegistirPopupWidget extends StatefulWidget {
  const SaatTarihDegistirPopupWidget({
    super.key,
    required this.saatTarihDegistir,
  });

  final ElectionsRow? saatTarihDegistir;

  @override
  State<SaatTarihDegistirPopupWidget> createState() =>
      _SaatTarihDegistirPopupWidgetState();
}

class _SaatTarihDegistirPopupWidgetState
    extends State<SaatTarihDegistirPopupWidget> {
  late SaatTarihDegistirPopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaatTarihDegistirPopupModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // container that is for sign in button
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: 250.0,
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
                                // Start Date & Time
                                final datePicked1Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate:
                                      (getCurrentTimestamp ?? DateTime(1900)),
                                  lastDate: DateTime(2050),
                                  builder: (context, child) {
                                    return wrapInMaterialDatePickerTheme(
                                      context,
                                      child!,
                                      headerBackgroundColor:
                                          FlutterFlowTheme.of(context).mavi,
                                      headerForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      headerTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 32.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                      pickerBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      pickerForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      selectedDateTimeBackgroundColor:
                                          FlutterFlowTheme.of(context).mavi,
                                      selectedDateTimeForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      actionButtonForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      iconSize: 24.0,
                                    );
                                  },
                                );

                                TimeOfDay? datePicked1Time;
                                if (datePicked1Date != null) {
                                  datePicked1Time = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.fromDateTime(
                                        getCurrentTimestamp),
                                    builder: (context, child) {
                                      return wrapInMaterialTimePickerTheme(
                                        context,
                                        child!,
                                        headerBackgroundColor:
                                            FlutterFlowTheme.of(context).mavi,
                                        headerForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        headerTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                        pickerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        pickerForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        selectedDateTimeBackgroundColor:
                                            FlutterFlowTheme.of(context).mavi,
                                        selectedDateTimeForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        actionButtonForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        iconSize: 24.0,
                                      );
                                    },
                                  );
                                }

                                if (datePicked1Date != null &&
                                    datePicked1Time != null) {
                                  safeSetState(() {
                                    _model.datePicked1 = DateTime(
                                      datePicked1Date.year,
                                      datePicked1Date.month,
                                      datePicked1Date.day,
                                      datePicked1Time!.hour,
                                      datePicked1Time.minute,
                                    );
                                  });
                                }
                                _model.startDateTime =
                                    await actions.unixToDateTime(
                                  _model.datePicked1!.secondsSinceEpoch,
                                );

                                setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                '6vsdasak' /* Voting Start Date & Time */,
                              ),
                              options: FFButtonOptions(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0x00067BB7),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
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
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'sl1aip89' /* Voting Start Date & Time: */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          _model.startDateTime,
                          'ㅤㅤㅤㅤㅤㅤ',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).mavi,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // container that is for sign in button
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: 250.0,
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
                                // End Date & Time
                                final datePicked2Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate:
                                      (getCurrentTimestamp ?? DateTime(1900)),
                                  lastDate: DateTime(2050),
                                  builder: (context, child) {
                                    return wrapInMaterialDatePickerTheme(
                                      context,
                                      child!,
                                      headerBackgroundColor:
                                          FlutterFlowTheme.of(context).mavi,
                                      headerForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      headerTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 32.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                      pickerBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      pickerForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      selectedDateTimeBackgroundColor:
                                          FlutterFlowTheme.of(context).mavi,
                                      selectedDateTimeForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      actionButtonForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      iconSize: 24.0,
                                    );
                                  },
                                );

                                TimeOfDay? datePicked2Time;
                                if (datePicked2Date != null) {
                                  datePicked2Time = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.fromDateTime(
                                        getCurrentTimestamp),
                                    builder: (context, child) {
                                      return wrapInMaterialTimePickerTheme(
                                        context,
                                        child!,
                                        headerBackgroundColor:
                                            FlutterFlowTheme.of(context).mavi,
                                        headerForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        headerTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                        pickerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        pickerForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        selectedDateTimeBackgroundColor:
                                            FlutterFlowTheme.of(context).mavi,
                                        selectedDateTimeForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        actionButtonForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        iconSize: 24.0,
                                      );
                                    },
                                  );
                                }

                                if (datePicked2Date != null &&
                                    datePicked2Time != null) {
                                  safeSetState(() {
                                    _model.datePicked2 = DateTime(
                                      datePicked2Date.year,
                                      datePicked2Date.month,
                                      datePicked2Date.day,
                                      datePicked2Time!.hour,
                                      datePicked2Time.minute,
                                    );
                                  });
                                }
                                _model.endDateTime =
                                    await actions.unixToDateTime(
                                  _model.datePicked2!.secondsSinceEpoch,
                                );

                                setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                '16ngl0u3' /* Voting End Date & Time */,
                              ),
                              options: FFButtonOptions(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0x00067BB7),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
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
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '2jx1yyr7' /* Voting End Date & Time: */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          valueOrDefault<String>(
                            _model.endDateTime,
                            'ㅤㅤㅤㅤㅤㅤ',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  width: 100.0,
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
                        FlutterFlowTheme.of(context).graSet23,
                        FlutterFlowTheme.of(context).graSet22
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(-1.0, 0.0),
                      end: const AlignmentDirectional(1.0, 0),
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.datePicked1?.secondsSinceEpoch != null) {
                        if (_model.datePicked1!.secondsSinceEpoch >
                            getCurrentTimestamp.secondsSinceEpoch) {
                          if (_model.datePicked2?.secondsSinceEpoch != null) {
                            if (_model.datePicked1!.secondsSinceEpoch <
                                _model.datePicked2!.secondsSinceEpoch) {
                              await ElectionsTable().update(
                                data: {
                                  'startDate':
                                      _model.datePicked1?.secondsSinceEpoch,
                                  'endDate':
                                      _model.datePicked2?.secondsSinceEpoch,
                                },
                                matchingRows: (rows) => rows.eq(
                                  'id',
                                  widget.saatTarihDegistir?.id,
                                ),
                              );
                              await ElectionGroup.editElectionCall.call(
                                id: widget.saatTarihDegistir?.id,
                                name: widget.saatTarihDegistir?.name,
                                startDate:
                                    _model.datePicked1?.secondsSinceEpoch,
                                endDate: _model.datePicked2?.secondsSinceEpoch,
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
                                      title: const Text(
                                          'You can\'t change start - end date&time for a voting!'),
                                      content: const Text(
                                          'A voting\'s start date cannot be later than or the same as the end date.'),
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
                                      title: const Text(
                                          'Oylama için başlangıç - bitiş tarih&saatini değiştiremezsin!'),
                                      content: const Text(
                                          'Bir oylamanın başlangıç tarihi, bitiş tarihinden daha geç veya aynı olamaz.'),
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
                          } else {
                            if (FFLocalizations.of(context).languageCode ==
                                'en') {
                              // enAlert
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text(
                                        'You can\'t change end date&time for this election!'),
                                    content: const Text(
                                        'To change the end date&time of an election, you must select the end date and time of the election.'),
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
                                    title: const Text(
                                        'Oylamanın bitiş tarih&saatini değiştiremezsin!'),
                                    content: const Text(
                                        'Oylamanın bitiş tarih&saatini değiştirmek için, oylamanın bitiş tarihi ve saatini seçmelisiniz.'),
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
                        } else {
                          if (FFLocalizations.of(context).languageCode ==
                              'en') {
                            // enAlert
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text(
                                      'You can\'t change start date&time for this election!'),
                                  content: const Text(
                                      'To change start date&time of an election, the start date&time of the election must be later than the current date and time.'),
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
                                  title: const Text(
                                      'Oylama başlangıç tarih&saatini değiştiremezsin!'),
                                  content: const Text(
                                      'Oylama başlangıç tarih&saatini değiştirmek için, oylamanın başlangıç tarihi şuanki tarih ve saat\'den geç olmalıdır.'),
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
                      } else {
                        if (FFLocalizations.of(context).languageCode == 'en') {
                          // enAlert
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text(
                                    'You can\'t change the date&time of the election.'),
                                content: const Text(
                                    'To change the date&time of an election, you must select the start date and time of the vote.'),
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
                                title: const Text(
                                    'Seçimin tarih ve saatini değiştiremezsiniz.'),
                                content: const Text(
                                    'Seçim tarih ve saatini değiştirmek için oylamanın başlangıç ​​tarihini ve saatini seçmelisiniz.'),
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
                    },
                    text: FFLocalizations.of(context).getText(
                      'vpo09xoq' /* Save */,
                    ),
                    options: FFButtonOptions(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).text1,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).customColor2,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
