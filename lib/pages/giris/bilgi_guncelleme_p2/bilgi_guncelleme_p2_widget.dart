import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bilgi_guncelleme_p2_model.dart';
export 'bilgi_guncelleme_p2_model.dart';

class BilgiGuncellemeP2Widget extends StatefulWidget {
  const BilgiGuncellemeP2Widget({super.key});

  @override
  State<BilgiGuncellemeP2Widget> createState() =>
      _BilgiGuncellemeP2WidgetState();
}

class _BilgiGuncellemeP2WidgetState extends State<BilgiGuncellemeP2Widget> {
  late BilgiGuncellemeP2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BilgiGuncellemeP2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<UsersRow>>(
      future: UsersTable().querySingleRow(
        queryFn: (q) => q.eq(
          'id',
          FFAppState().userIDNum,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).background2,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).mavi,
                  ),
                ),
              ),
            ),
          );
        }
        List<UsersRow> bilgiGuncellemeP2UsersRowList = snapshot.data!;
        final bilgiGuncellemeP2UsersRow =
            bilgiGuncellemeP2UsersRowList.isNotEmpty
                ? bilgiGuncellemeP2UsersRowList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).background2,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).background1,
              automaticallyImplyLeading: false,
              title: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  Theme.of(context).brightness == Brightness.dark
                      ? 'assets/images/e-lection-logo-beyaz.png'
                      : 'assets/images/e-lection-logo-siyah.png',
                  width: 95.0,
                  height: 50.0,
                  fit: BoxFit.fill,
                ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.85,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).background1,
                            FlutterFlowTheme.of(context).background2
                          ],
                          stops: const [0.0, 1.0],
                          begin: const AlignmentDirectional(0.0, -1.0),
                          end: const AlignmentDirectional(0, 1.0),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'sa9l808p' /* Update Your Profile */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .text1,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.person_add_alt,
                                    color: FlutterFlowTheme.of(context).text1,
                                    size: 50.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 340.0,
                              child: Divider(
                                height: 50.0,
                                thickness: 1.0,
                                color:
                                    FlutterFlowTheme.of(context).customColor2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 10.0, 20.0, 30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'wsk54q1i' /* Please enter your address. */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .text1,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FutureBuilder<List<DistrictsRow>>(
                                          future: DistrictsTable().queryRows(
                                            queryFn: (q) => q.eq(
                                              'lengthOfID',
                                              2,
                                            ),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .mavi,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<DistrictsRow>
                                                dropDownDistrictsRowList =
                                                snapshot.data!;
                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController1 ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: dropDownDistrictsRowList
                                                  .map((e) => e.districtName)
                                                  .toList(),
                                              onChanged: (val) async {
                                                setState(() => _model
                                                    .dropDownValue1 = val);
                                                _model.countryIDOut =
                                                    await DistrictsTable()
                                                        .queryRows(
                                                  queryFn: (q) => q.eq(
                                                    'districtName',
                                                    _model.dropDownValue1,
                                                  ),
                                                );
                                                setState(() {
                                                  FFAppState().countryID =
                                                      _model.countryIDOut!.first
                                                          .districtID;
                                                });

                                                setState(() {});
                                              },
                                              width: 300.0,
                                              height: 56.0,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .text1,
                                                    letterSpacing: 0.0,
                                                  ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'usmqixi6' /* Please select your country. */,
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .mavi,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .background2,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .mavi,
                                              borderWidth: 1.0,
                                              borderRadius: 15.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (_model.dropDownValue1 != null &&
                                            _model.dropDownValue1 != '')
                                          FutureBuilder<List<DistrictsRow>>(
                                            future: DistrictsTable().queryRows(
                                              queryFn: (q) => q
                                                  .eq(
                                                    'lengthOfID',
                                                    6,
                                                  )
                                                  .in_(
                                                    'districtID',
                                                    functions.cityIDGenerator(
                                                        FFAppState()
                                                            .countryID)!,
                                                  )
                                                  .order('districtID',
                                                      ascending: true),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .mavi,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<DistrictsRow>
                                                  dropDownDistrictsRowList =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropDownValueController2 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    dropDownDistrictsRowList
                                                        .map((e) =>
                                                            e.districtName)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .dropDownValue2 = val);
                                                  _model.cityIDOut =
                                                      await DistrictsTable()
                                                          .queryRows(
                                                    queryFn: (q) => q.eq(
                                                      'districtName',
                                                      _model.dropDownValue2,
                                                    ),
                                                  );
                                                  setState(() {
                                                    FFAppState().cityID = _model
                                                        .cityIDOut!
                                                        .first
                                                        .districtID;
                                                  });

                                                  setState(() {});
                                                },
                                                width: 300.0,
                                                height: 56.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .text1,
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .text1,
                                                      letterSpacing: 0.0,
                                                    ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '463m3v9g' /* Please select your city. */,
                                                ),
                                                searchHintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '6siasvx1' /* Search for a city... */,
                                                ),
                                                searchCursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .text1,
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mavi,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .background2,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .mavi,
                                                borderWidth: 1.0,
                                                borderRadius: 15.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: true,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (_model.dropDownValue2 != null &&
                                            _model.dropDownValue2 != '')
                                          FutureBuilder<List<DistrictsRow>>(
                                            future: DistrictsTable().queryRows(
                                              queryFn: (q) => q
                                                  .eq(
                                                    'lengthOfID',
                                                    10,
                                                  )
                                                  .in_(
                                                    'districtID',
                                                    functions
                                                        .districtIDGenerator(
                                                            FFAppState()
                                                                .cityID)!,
                                                  )
                                                  .order('districtID',
                                                      ascending: true),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .mavi,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<DistrictsRow>
                                                  dropDownDistrictsRowList =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropDownValueController3 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    dropDownDistrictsRowList
                                                        .map((e) =>
                                                            e.districtName)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .dropDownValue3 = val);
                                                  _model.districtIDOut =
                                                      await DistrictsTable()
                                                          .queryRows(
                                                    queryFn: (q) => q
                                                        .eq(
                                                          'districtName',
                                                          _model.dropDownValue3,
                                                        )
                                                        .in_(
                                                          'districtID',
                                                          functions
                                                              .districtIDGenerator(
                                                                  FFAppState()
                                                                      .cityID)!,
                                                        ),
                                                  );
                                                  setState(() {
                                                    FFAppState().districtID =
                                                        _model.districtIDOut!
                                                            .first.districtID;
                                                  });

                                                  setState(() {});
                                                },
                                                width: 300.0,
                                                height: 56.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .text1,
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .text1,
                                                      letterSpacing: 0.0,
                                                    ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'u3kn1wo3' /* Please select your district. */,
                                                ),
                                                searchHintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'cqmmnizu' /* Search for a district... */,
                                                ),
                                                searchCursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .text1,
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mavi,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .background2,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .mavi,
                                                borderWidth: 1.0,
                                                borderRadius: 15.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: true,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (_model.dropDownValue3 != null &&
                                          _model.dropDownValue3 != '')
                                        FutureBuilder<List<DistrictsRow>>(
                                          future: DistrictsTable().queryRows(
                                            queryFn: (q) => q
                                                .gte(
                                                  'lengthOfID',
                                                  14,
                                                )
                                                .in_(
                                                  'districtID',
                                                  functions
                                                      .neighborhoodIDGenerator(
                                                          FFAppState()
                                                              .districtID)!,
                                                )
                                                .order('districtID',
                                                    ascending: true),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .mavi,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<DistrictsRow>
                                                dropDownDistrictsRowList =
                                                snapshot.data!;
                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController4 ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: dropDownDistrictsRowList
                                                  .map((e) => e.districtName)
                                                  .toList(),
                                              onChanged: (val) async {
                                                setState(() => _model
                                                    .dropDownValue4 = val);
                                                _model.neighIDOut =
                                                    await DistrictsTable()
                                                        .queryRows(
                                                  queryFn: (q) => q
                                                      .eq(
                                                        'districtName',
                                                        _model.dropDownValue4,
                                                      )
                                                      .in_(
                                                        'districtID',
                                                        functions
                                                            .neighborhoodIDGenerator(
                                                                FFAppState()
                                                                    .districtID)!,
                                                      ),
                                                );
                                                setState(() {
                                                  FFAppState().neighborhoodID =
                                                      _model.neighIDOut!.first
                                                          .districtID;
                                                });

                                                setState(() {});
                                              },
                                              width: 300.0,
                                              height: 56.0,
                                              searchHintTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .text1,
                                                        letterSpacing: 0.0,
                                                      ),
                                              searchTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        letterSpacing: 0.0,
                                                      ),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .text1,
                                                    letterSpacing: 0.0,
                                                  ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'es31fj2c' /* Please select your neighbourho... */,
                                              ),
                                              searchHintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'te1vgncn' /* Search for a neighbourhood or ... */,
                                              ),
                                              searchCursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .text1,
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .mavi,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .background2,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .mavi,
                                              borderWidth: 1.0,
                                              borderRadius: 15.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: true,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 230.0,
                              height: 52.0,
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
                                  if ((FFAppState().countryID != '') &&
                                      (FFAppState().cityID != '') &&
                                      (FFAppState().districtID != '') &&
                                      (FFAppState().neighborhoodID != '')) {
                                    setState(() {
                                      FFAppState().addToUserDistrictIDs(
                                          FFAppState().countryID);
                                    });
                                    setState(() {
                                      FFAppState().addToUserDistrictIDs(
                                          FFAppState().cityID);
                                    });
                                    setState(() {
                                      FFAppState().addToUserDistrictIDs(
                                          FFAppState().districtID);
                                    });
                                    setState(() {
                                      FFAppState().addToUserDistrictIDs(
                                          FFAppState().neighborhoodID);
                                    });
                                    await UsersTable().update(
                                      data: {
                                        'districts':
                                            FFAppState().userDistrictIDs,
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'id',
                                        FFAppState().userIDNum,
                                      ),
                                    );
                                    _model.countryVarMi = await DistrictGroup
                                        .getDistrictCall
                                        .call(
                                      id: FFAppState().countryID,
                                    );
                                    if (!(_model.countryVarMi?.succeeded ??
                                        true)) {
                                      await DistrictGroup.addDistrictCall.call(
                                        id: FFAppState().countryID,
                                        name: _model.dropDownValue1,
                                      );
                                    }
                                    _model.cityVarMi = await DistrictGroup
                                        .getDistrictCall
                                        .call(
                                      id: FFAppState().cityID,
                                    );
                                    if (!(_model.cityVarMi?.succeeded ??
                                        true)) {
                                      await DistrictGroup.addDistrictCall.call(
                                        id: FFAppState().cityID,
                                        name:
                                            '${_model.dropDownValue1}, ${_model.dropDownValue2}',
                                      );
                                    }
                                    _model.districtVarMi = await DistrictGroup
                                        .getDistrictCall
                                        .call(
                                      id: FFAppState().districtID,
                                    );
                                    if (!(_model.districtVarMi?.succeeded ??
                                        true)) {
                                      await DistrictGroup.addDistrictCall.call(
                                        id: FFAppState().districtID,
                                        name:
                                            '${_model.dropDownValue1}, ${_model.dropDownValue2}, ${_model.dropDownValue3}',
                                      );
                                    }
                                    _model.neighborhoodVarMi =
                                        await DistrictGroup.getDistrictCall
                                            .call(
                                      id: FFAppState().neighborhoodID,
                                    );
                                    if (!(_model.neighborhoodVarMi?.succeeded ??
                                        true)) {
                                      await DistrictGroup.addDistrictCall.call(
                                        id: FFAppState().neighborhoodID,
                                        name:
                                            '${_model.dropDownValue1}, ${_model.dropDownValue2}, ${_model.dropDownValue3}, ${_model.dropDownValue4}',
                                      );
                                    }
                                    await VoterGroup.addDistrictToVoterCall
                                        .call(
                                      wallet: bilgiGuncellemeP2UsersRow
                                          ?.walletIdVoter,
                                      districtID: FFAppState().neighborhoodID,
                                    );
                                    FFAppState().update(() {
                                      FFAppState().countryID = '';
                                      FFAppState().cityID = '';
                                      FFAppState().districtID = '';
                                      FFAppState().neighborhoodID = '';
                                      FFAppState().userDistrictIDs = [];
                                    });

                                    context.goNamed(
                                      'HowvotingWorksP1',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  } else {
                                    if (FFLocalizations.of(context)
                                            .languageCode ==
                                        'tr') {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text(
                                                'Tüm alanları doldurunuz!'),
                                            content: const Text(
                                                'Lütfen adres bilgilerinizi giriniz.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Tamam'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text(
                                                'Please fill in all fields!'),
                                            content: const Text(
                                                'Please enter your address information.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('OK'),
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
                                  '69w1mgr7' /* Next */,
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
                                        color:
                                            FlutterFlowTheme.of(context).info,
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
