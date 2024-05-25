import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dropdown_deneme_model.dart';
export 'dropdown_deneme_model.dart';

class DropdownDenemeWidget extends StatefulWidget {
  const DropdownDenemeWidget({super.key});

  @override
  State<DropdownDenemeWidget> createState() => _DropdownDenemeWidgetState();
}

class _DropdownDenemeWidgetState extends State<DropdownDenemeWidget> {
  late DropdownDenemeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropdownDenemeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          actions: [],
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
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '10pveiu2' /* KANDIRDIM DISTRICT SEÇ */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
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
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context).mavi,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<DistrictsRow>
                                        dropDownDistrictsRowList =
                                        snapshot.data!;
                                    return FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownValueController1 ??=
                                              FormFieldController<String>(null),
                                      options: dropDownDistrictsRowList
                                          .map((e) => e.districtName)
                                          .toList(),
                                      onChanged: (val) async {
                                        setState(
                                            () => _model.dropDownValue1 = val);
                                        _model.countryIDOut =
                                            await DistrictsTable().queryRows(
                                          queryFn: (q) => q.eq(
                                            'districtName',
                                            _model.dropDownValue1,
                                          ),
                                        );
                                        setState(() {
                                          FFAppState().countryID = _model
                                              .countryIDOut!.first.districtID;
                                        });

                                        setState(() {});
                                      },
                                      width: 300.0,
                                      height: 56.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .text1,
                                            letterSpacing: 0.0,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '09icxkl3' /* Please select your country. */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).mavi,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .background2,
                                      elevation: 2.0,
                                      borderColor:
                                          FlutterFlowTheme.of(context).mavi,
                                      borderWidth: 1.0,
                                      borderRadius: 15.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
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
                            padding: EdgeInsetsDirectional.fromSTEB(
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
                                                FFAppState().countryID)!,
                                          )
                                          .order('districtID', ascending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
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
                                                .dropDownValueController2 ??=
                                            FormFieldController<String>(null),
                                        options: dropDownDistrictsRowList
                                            .map((e) => e.districtName)
                                            .toList(),
                                        onChanged: (val) async {
                                          setState(() =>
                                              _model.dropDownValue2 = val);
                                          _model.cityIDOut =
                                              await DistrictsTable().queryRows(
                                            queryFn: (q) => q.eq(
                                              'districtName',
                                              _model.dropDownValue2,
                                            ),
                                          );
                                          setState(() {
                                            FFAppState().cityID = _model
                                                .cityIDOut!.first.districtID;
                                          });

                                          setState(() {});
                                        },
                                        width: 300.0,
                                        height: 56.0,
                                        searchHintTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .text1,
                                                  letterSpacing: 0.0,
                                                ),
                                        searchTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  letterSpacing: 0.0,
                                                ),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .text1,
                                              letterSpacing: 0.0,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'c8kirnq8' /* Please select your city. */,
                                        ),
                                        searchHintText:
                                            FFLocalizations.of(context).getText(
                                          '6n038rnk' /* Search for a city... */,
                                        ),
                                        searchCursorColor:
                                            FlutterFlowTheme.of(context).text1,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).mavi,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .background2,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).mavi,
                                        borderWidth: 1.0,
                                        borderRadius: 15.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
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
                            padding: EdgeInsetsDirectional.fromSTEB(
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
                                            functions.districtIDGenerator(
                                                FFAppState().cityID)!,
                                          )
                                          .order('districtID', ascending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
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
                                                .dropDownValueController3 ??=
                                            FormFieldController<String>(null),
                                        options: dropDownDistrictsRowList
                                            .map((e) => e.districtName)
                                            .toList(),
                                        onChanged: (val) async {
                                          setState(() =>
                                              _model.dropDownValue3 = val);
                                          _model.districtIDOut =
                                              await DistrictsTable().queryRows(
                                            queryFn: (q) => q.eq(
                                              'districtName',
                                              _model.dropDownValue3,
                                            ),
                                          );
                                          setState(() {
                                            FFAppState().districtID = _model
                                                .districtIDOut!
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
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .text1,
                                                  letterSpacing: 0.0,
                                                ),
                                        searchTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  letterSpacing: 0.0,
                                                ),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .text1,
                                              letterSpacing: 0.0,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '3sv0gkh1' /* Please select your district. */,
                                        ),
                                        searchHintText:
                                            FFLocalizations.of(context).getText(
                                          '4hwi01jk' /* Search for a district... */,
                                        ),
                                        searchCursorColor:
                                            FlutterFlowTheme.of(context).text1,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).mavi,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .background2,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).mavi,
                                        borderWidth: 1.0,
                                        borderRadius: 15.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
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
                                          functions.neighborhoodIDGenerator(
                                              FFAppState().districtID)!,
                                        )
                                        .order('districtID', ascending: true),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context).mavi,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<DistrictsRow>
                                        dropDownDistrictsRowList =
                                        snapshot.data!;
                                    return FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownValueController4 ??=
                                              FormFieldController<String>(null),
                                      options: dropDownDistrictsRowList
                                          .map((e) => e.districtName)
                                          .toList(),
                                      onChanged: (val) => setState(
                                          () => _model.dropDownValue4 = val),
                                      width: 300.0,
                                      height: 56.0,
                                      searchHintTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .text1,
                                                letterSpacing: 0.0,
                                              ),
                                      searchTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                letterSpacing: 0.0,
                                              ),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .text1,
                                            letterSpacing: 0.0,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '1iqatnfw' /* Please select your neighbourho... */,
                                      ),
                                      searchHintText:
                                          FFLocalizations.of(context).getText(
                                        'v0mkx94z' /* Search for a neighbourhood or ... */,
                                      ),
                                      searchCursorColor:
                                          FlutterFlowTheme.of(context).text1,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).mavi,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .background2,
                                      elevation: 2.0,
                                      borderColor:
                                          FlutterFlowTheme.of(context).mavi,
                                      borderWidth: 1.0,
                                      borderRadius: 15.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
