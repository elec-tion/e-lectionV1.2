import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/oylama/oylama_olustur/popups/add_voter/add_voter_widget.dart';
import '/pages/oylama/oylama_olustur/popups/delete_voter/delete_voter_widget.dart';
import '/pages/oylama/oylama_olustur/popups/voter_popup/voter_popup_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'oylama_olustur_p3_model.dart';
export 'oylama_olustur_p3_model.dart';

class OylamaOlusturP3Widget extends StatefulWidget {
  const OylamaOlusturP3Widget({super.key});

  @override
  State<OylamaOlusturP3Widget> createState() => _OylamaOlusturP3WidgetState();
}

class _OylamaOlusturP3WidgetState extends State<OylamaOlusturP3Widget> {
  late OylamaOlusturP3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OylamaOlusturP3Model());
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
        List<UsersRow> oylamaOlusturP3UsersRowList = snapshot.data!;
        final oylamaOlusturP3UsersRow = oylamaOlusturP3UsersRowList.isNotEmpty
            ? oylamaOlusturP3UsersRowList.first
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
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      fadeInDuration: const Duration(milliseconds: 500),
                      fadeOutDuration: const Duration(milliseconds: 500),
                      imageUrl: oylamaOlusturP3UsersRow!.photoUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.9,
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
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'duqynpe2' /* Create Election */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleLarge
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .text1,
                                                      fontSize: 30.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 58.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: double.infinity,
                                    decoration: const BoxDecoration(),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          40.0, 10.0, 40.0, 0.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 30.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xqrw0g7x' /* Voters */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Builder(
                                                          builder: (context) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap: () => _model.unfocusNode.canRequestFocus
                                                                            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                            : FocusScope.of(context).unfocus(),
                                                                        child:
                                                                            const SizedBox(
                                                                          height:
                                                                              500.0,
                                                                          width:
                                                                              350.0,
                                                                          child:
                                                                              VoterPopupWidget(),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    setState(
                                                                        () {}));
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .info_outline,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .mavi,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                10.0,
                                                                10.0,
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  visualDensity:
                                                                      VisualDensity
                                                                          .compact,
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .regionalElectionValue ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.regionalElectionValue =
                                                                          newValue!);
                                                                  if (newValue!) {
                                                                    setState(
                                                                        () {
                                                                      _model.customElectionValue =
                                                                          false;
                                                                    });
                                                                  }
                                                                },
                                                                side:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .mavi,
                                                                checkColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'wgntiigk' /* I want to create a regional el... */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  visualDensity:
                                                                      VisualDensity
                                                                          .compact,
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .customElectionValue ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.customElectionValue =
                                                                          newValue!);
                                                                  if (newValue!) {
                                                                    setState(
                                                                        () {
                                                                      _model.regionalElectionValue =
                                                                          false;
                                                                    });
                                                                  }
                                                                },
                                                                side:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .mavi,
                                                                checkColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'hi287s1h' /* I want to create a custom elec... */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      FutureBuilder<
                                                          List<UsersRow>>(
                                                        future: UsersTable()
                                                            .queryRows(
                                                          queryFn: (q) => q.in_(
                                                            'wallet_id_voter',
                                                            FFAppState()
                                                                .addVoterToElection,
                                                          ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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
                                                          List<UsersRow>
                                                              listViewUsersRowList =
                                                              snapshot.data!;
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewUsersRowList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewUsersRow =
                                                                  listViewUsersRowList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_right,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .text1,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            40.0,
                                                                        height:
                                                                            40.0,
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            const BoxDecoration(
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child: Image
                                                                            .network(
                                                                          listViewUsersRow
                                                                              .photoUrl,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          listViewUsersRow
                                                                              .name,
                                                                          'voterName',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: FlutterFlowTheme.of(context).text1,
                                                                              fontSize: 15.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) =>
                                                                              FlutterFlowIconButton(
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).mavi,
                                                                        borderRadius:
                                                                            20.0,
                                                                        borderWidth:
                                                                            1.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        fillColor:
                                                                            const Color(0x004B39EF),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .person_remove,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          await showDialog(
                                                                            barrierDismissible:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation: 0,
                                                                                insetPadding: EdgeInsets.zero,
                                                                                backgroundColor: Colors.transparent,
                                                                                alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child: GestureDetector(
                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                  child: SizedBox(
                                                                                    height: 300.0,
                                                                                    width: 300.0,
                                                                                    child: DeleteVoterWidget(
                                                                                      deneme: listViewUsersRow,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              setState(() {}));
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(40.0, 5.0,
                                                                40.0, 20.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (_model
                                                                .customElectionValue ==
                                                            true)
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15.0),
                                                              ),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  boxShadow: const [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4.0,
                                                                      color: Color(
                                                                          0x33000000),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        2.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  gradient:
                                                                      LinearGradient(
                                                                    colors: [
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .graSet23,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .graSet22
                                                                    ],
                                                                    stops: const [
                                                                      0.0,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    end:
                                                                        const AlignmentDirectional(
                                                                            1.0,
                                                                            0),
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .customColor2,
                                                                    width: 0.5,
                                                                  ),
                                                                ),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) =>
                                                                          FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      await showDialog(
                                                                        barrierDismissible:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Dialog(
                                                                            elevation:
                                                                                0,
                                                                            insetPadding:
                                                                                EdgeInsets.zero,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: const SizedBox(
                                                                                height: 350.0,
                                                                                width: 300.0,
                                                                                child: AddVoterWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'fo4bgdr5' /* Add Voter */,
                                                                    ),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .person_add_alt_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .text1,
                                                                      size:
                                                                          28.0,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          300.0,
                                                                      height:
                                                                          50.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: Colors
                                                                          .transparent,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).text1,
                                                                            fontSize:
                                                                                17.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                      elevation:
                                                                          0.0,
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              15.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  if (_model
                                                          .customElectionValue ==
                                                      true)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  0.0,
                                                                  15.0,
                                                                  20.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    visualDensity:
                                                                        VisualDensity
                                                                            .compact,
                                                                    materialTapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                    ),
                                                                  ),
                                                                  unselectedWidgetColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .addMyselfVoterValue ??=
                                                                      false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        _model.addMyselfVoterValue =
                                                                            newValue!);
                                                                  },
                                                                  side:
                                                                      BorderSide(
                                                                    width: 2,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .text1,
                                                                  checkColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .background1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '8atwf5am' /* Add myself as a voter. */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  if (_model
                                                          .regionalElectionValue ==
                                                      true)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons.star,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .mavi,
                                                                  size: 15.0,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '5813glb2' /* The voting you want to create ... */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  if ((_model.dropDownValue1 !=
                                                              null &&
                                                          _model.dropDownValue1 !=
                                                              '') &&
                                                      (_model.regionalElectionValue ==
                                                          true))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'dukz377p' /* Regional Election Information */,
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          if (_model.dropDownValue1 !=
                                                                  null &&
                                                              _model.dropDownValue1 !=
                                                                  '')
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .arrow_right_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .text1,
                                                                    size: 24.0,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '4rxiz1rt' /* Country: */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).text1,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      _model
                                                                          .dropDownValue1,
                                                                      'ulkeAdi',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).text1,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          if (_model.dropDownValue2 !=
                                                                  null &&
                                                              _model.dropDownValue2 !=
                                                                  '')
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .arrow_right_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .text1,
                                                                    size: 24.0,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '0nn638fb' /* City: */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).text1,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      _model
                                                                          .dropDownValue2,
                                                                      'ilAdi',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).text1,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          if (_model.dropDownValue3 !=
                                                                  null &&
                                                              _model.dropDownValue3 !=
                                                                  '')
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .arrow_right_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .text1,
                                                                    size: 24.0,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'd5wcuqc0' /* District: */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).text1,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      _model
                                                                          .dropDownValue3,
                                                                      'ilceAdi',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).text1,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          if (_model.dropDownValue4 !=
                                                                  null &&
                                                              _model.dropDownValue4 !=
                                                                  '')
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .arrow_right_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .text1,
                                                                    size: 24.0,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '437p8djm' /* Neighbourhood: */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).text1,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      _model
                                                                          .dropDownValue4,
                                                                      'mahAdi',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).text1,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      20.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (_model
                                                                      .regionalElectionValue ==
                                                                  true)
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FutureBuilder<
                                                                        List<
                                                                            DistrictsRow>>(
                                                                      future: DistrictsTable()
                                                                          .queryRows(
                                                                        queryFn:
                                                                            (q) =>
                                                                                q.eq(
                                                                          'lengthOfID',
                                                                          2,
                                                                        ),
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
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
                                                                        List<DistrictsRow>
                                                                            dropDownDistrictsRowList =
                                                                            snapshot.data!;
                                                                        return FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.dropDownValueController1 ??=
                                                                              FormFieldController<String>(null),
                                                                          options: dropDownDistrictsRowList
                                                                              .map((e) => e.districtName)
                                                                              .toList(),
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.dropDownValue1 = val);
                                                                            _model.countryIDOut =
                                                                                await DistrictsTable().queryRows(
                                                                              queryFn: (q) => q.eq(
                                                                                'districtName',
                                                                                _model.dropDownValue1,
                                                                              ),
                                                                            );
                                                                            FFAppState().countryID =
                                                                                _model.countryIDOut!.first.districtID;
                                                                            setState(() {});

                                                                            setState(() {});
                                                                          },
                                                                          width:
                                                                              280.0,
                                                                          height:
                                                                              55.0,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                color: FlutterFlowTheme.of(context).text1,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              FFLocalizations.of(context).getText(
                                                                            '7472l4wj' /* Please select your country. */,
                                                                          ),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).mavi,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).background2,
                                                                          elevation:
                                                                              2.0,
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).mavi,
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              15.0,
                                                                          margin: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isOverButton:
                                                                              true,
                                                                          isSearchable:
                                                                              false,
                                                                          isMultiSelect:
                                                                              false,
                                                                        );
                                                                      },
                                                                    ),
                                                                    if (_model.dropDownValue1 !=
                                                                            null &&
                                                                        _model.dropDownValue1 !=
                                                                            '')
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.dropDownValueController1?.reset();
                                                                              _model.dropDownValueController2?.reset();
                                                                              _model.dropDownValueController3?.reset();
                                                                              _model.dropDownValueController4?.reset();
                                                                            });
                                                                          },
                                                                          child:
                                                                              const Icon(
                                                                            Icons.close,
                                                                            color:
                                                                                Color(0xFFFF0000),
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      20.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if ((_model.dropDownValue1 !=
                                                                          null &&
                                                                      _model.dropDownValue1 !=
                                                                          '') &&
                                                                  (_model.regionalElectionValue ==
                                                                      true))
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FutureBuilder<
                                                                        List<
                                                                            DistrictsRow>>(
                                                                      future: DistrictsTable()
                                                                          .queryRows(
                                                                        queryFn: (q) => q
                                                                            .eq(
                                                                              'lengthOfID',
                                                                              6,
                                                                            )
                                                                            .in_(
                                                                              'districtID',
                                                                              functions.cityIDGenerator(FFAppState().countryID)!,
                                                                            )
                                                                            .order('districtID', ascending: true),
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
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
                                                                        List<DistrictsRow>
                                                                            dropDownDistrictsRowList =
                                                                            snapshot.data!;
                                                                        return FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.dropDownValueController2 ??=
                                                                              FormFieldController<String>(null),
                                                                          options: dropDownDistrictsRowList
                                                                              .map((e) => e.districtName)
                                                                              .toList(),
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.dropDownValue2 = val);
                                                                            _model.cityIDOut =
                                                                                await DistrictsTable().queryRows(
                                                                              queryFn: (q) => q.eq(
                                                                                'districtName',
                                                                                _model.dropDownValue2,
                                                                              ),
                                                                            );
                                                                            FFAppState().cityID =
                                                                                _model.cityIDOut!.first.districtID;
                                                                            setState(() {});

                                                                            setState(() {});
                                                                          },
                                                                          width:
                                                                              280.0,
                                                                          height:
                                                                              55.0,
                                                                          searchHintTextStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                color: FlutterFlowTheme.of(context).text1,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          searchTextStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                color: FlutterFlowTheme.of(context).text1,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'z0ztwxsn' /* Please select your city. */,
                                                                          ),
                                                                          searchHintText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'nwcswc0g' /* Search for a city... */,
                                                                          ),
                                                                          searchCursorColor:
                                                                              FlutterFlowTheme.of(context).text1,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).mavi,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).background2,
                                                                          elevation:
                                                                              2.0,
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).mavi,
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              15.0,
                                                                          margin: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isOverButton:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                          isMultiSelect:
                                                                              false,
                                                                        );
                                                                      },
                                                                    ),
                                                                    if (_model.dropDownValue2 !=
                                                                            null &&
                                                                        _model.dropDownValue2 !=
                                                                            '')
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.dropDownValueController2?.reset();
                                                                              _model.dropDownValueController3?.reset();
                                                                              _model.dropDownValueController4?.reset();
                                                                            });
                                                                          },
                                                                          child:
                                                                              const Icon(
                                                                            Icons.close,
                                                                            color:
                                                                                Color(0xFFFF0000),
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      20.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if ((_model.dropDownValue2 !=
                                                                          null &&
                                                                      _model.dropDownValue2 !=
                                                                          '') &&
                                                                  (_model.regionalElectionValue ==
                                                                      true))
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FutureBuilder<
                                                                        List<
                                                                            DistrictsRow>>(
                                                                      future: DistrictsTable()
                                                                          .queryRows(
                                                                        queryFn: (q) => q
                                                                            .eq(
                                                                              'lengthOfID',
                                                                              10,
                                                                            )
                                                                            .in_(
                                                                              'districtID',
                                                                              functions.districtIDGenerator(FFAppState().cityID)!,
                                                                            )
                                                                            .order('districtID', ascending: true),
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
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
                                                                        List<DistrictsRow>
                                                                            dropDownDistrictsRowList =
                                                                            snapshot.data!;
                                                                        return FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.dropDownValueController3 ??=
                                                                              FormFieldController<String>(null),
                                                                          options: dropDownDistrictsRowList
                                                                              .map((e) => e.districtName)
                                                                              .toList(),
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.dropDownValue3 = val);
                                                                            _model.districtIDOut =
                                                                                await DistrictsTable().queryRows(
                                                                              queryFn: (q) => q
                                                                                  .eq(
                                                                                    'districtName',
                                                                                    _model.dropDownValue3,
                                                                                  )
                                                                                  .in_(
                                                                                    'districtID',
                                                                                    functions.districtIDGenerator(FFAppState().cityID)!,
                                                                                  ),
                                                                            );
                                                                            FFAppState().districtID =
                                                                                _model.districtIDOut!.first.districtID;
                                                                            setState(() {});

                                                                            setState(() {});
                                                                          },
                                                                          width:
                                                                              280.0,
                                                                          height:
                                                                              55.0,
                                                                          searchHintTextStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                color: FlutterFlowTheme.of(context).text1,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          searchTextStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                color: FlutterFlowTheme.of(context).text1,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'betwihvd' /* Please select your district. */,
                                                                          ),
                                                                          searchHintText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'xqe25xr1' /* Search for a district... */,
                                                                          ),
                                                                          searchCursorColor:
                                                                              FlutterFlowTheme.of(context).text1,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).mavi,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).background2,
                                                                          elevation:
                                                                              2.0,
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).mavi,
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              15.0,
                                                                          margin: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isOverButton:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                          isMultiSelect:
                                                                              false,
                                                                        );
                                                                      },
                                                                    ),
                                                                    if (_model.dropDownValue3 !=
                                                                            null &&
                                                                        _model.dropDownValue3 !=
                                                                            '')
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.dropDownValueController3?.reset();
                                                                              _model.dropDownValueController4?.reset();
                                                                            });
                                                                          },
                                                                          child:
                                                                              const Icon(
                                                                            Icons.close,
                                                                            color:
                                                                                Color(0xFFFF0000),
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if ((_model.dropDownValue3 !=
                                                                        null &&
                                                                    _model.dropDownValue3 !=
                                                                        '') &&
                                                                (_model.regionalElectionValue ==
                                                                    true))
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  FutureBuilder<
                                                                      List<
                                                                          DistrictsRow>>(
                                                                    future: DistrictsTable()
                                                                        .queryRows(
                                                                      queryFn: (q) => q
                                                                          .gte(
                                                                            'lengthOfID',
                                                                            14,
                                                                          )
                                                                          .in_(
                                                                            'districtID',
                                                                            functions.neighborhoodIDGenerator(FFAppState().districtID)!,
                                                                          )
                                                                          .order('districtID', ascending: true),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).mavi,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<DistrictsRow>
                                                                          dropDownDistrictsRowList =
                                                                          snapshot
                                                                              .data!;
                                                                      return FlutterFlowDropDown<
                                                                          String>(
                                                                        controller: _model
                                                                            .dropDownValueController4 ??= FormFieldController<
                                                                                String>(
                                                                            null),
                                                                        options: dropDownDistrictsRowList
                                                                            .map((e) =>
                                                                                e.districtName)
                                                                            .toList(),
                                                                        onChanged:
                                                                            (val) async {
                                                                          setState(() =>
                                                                              _model.dropDownValue4 = val);
                                                                          _model.neighIDOut =
                                                                              await DistrictsTable().queryRows(
                                                                            queryFn: (q) => q
                                                                                .eq(
                                                                                  'districtName',
                                                                                  _model.dropDownValue4,
                                                                                )
                                                                                .in_(
                                                                                  'districtID',
                                                                                  functions.neighborhoodIDGenerator(FFAppState().districtID)!,
                                                                                ),
                                                                          );
                                                                          FFAppState().neighborhoodID = _model
                                                                              .neighIDOut!
                                                                              .first
                                                                              .districtID;
                                                                          setState(
                                                                              () {});

                                                                          setState(
                                                                              () {});
                                                                        },
                                                                        width:
                                                                            280.0,
                                                                        height:
                                                                            55.0,
                                                                        searchHintTextStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: FlutterFlowTheme.of(context).text1,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        searchTextStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: FlutterFlowTheme.of(context).text1,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintText:
                                                                            FFLocalizations.of(context).getText(
                                                                          '1bsj3a4h' /* Please select your neighbourho... */,
                                                                        ),
                                                                        searchHintText:
                                                                            FFLocalizations.of(context).getText(
                                                                          'wrq4xy1e' /* Search for a neighbourhood or ... */,
                                                                        ),
                                                                        searchCursorColor:
                                                                            FlutterFlowTheme.of(context).text1,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).mavi,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).background2,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).mavi,
                                                                        borderWidth:
                                                                            1.0,
                                                                        borderRadius:
                                                                            15.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isOverButton:
                                                                            true,
                                                                        isSearchable:
                                                                            true,
                                                                        isMultiSelect:
                                                                            false,
                                                                      );
                                                                    },
                                                                  ),
                                                                  if (_model.dropDownValue4 !=
                                                                          null &&
                                                                      _model.dropDownValue4 !=
                                                                          '')
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          setState(
                                                                              () {
                                                                            _model.dropDownValueController4?.reset();
                                                                          });
                                                                        },
                                                                        child:
                                                                            const Icon(
                                                                          Icons
                                                                              .close,
                                                                          color:
                                                                              Color(0xFFFF0000),
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
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
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 340.0,
                                        child: Divider(
                                          height: 10.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .customColor2,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            40.0, 20.0, 40.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      visualDensity:
                                                          VisualDensity.compact,
                                                      materialTapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                      ),
                                                    ),
                                                    unselectedWidgetColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                  child: Checkbox(
                                                    value: _model
                                                            .createVoteAgreeDataCheckboxValue ??=
                                                        false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() => _model
                                                              .createVoteAgreeDataCheckboxValue =
                                                          newValue!);
                                                    },
                                                    side: BorderSide(
                                                      width: 2,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .text1,
                                                    checkColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .background1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '77w8hnlu' /* I confirm that I will not be a... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 0.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            child: Container(
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
                                                    FlutterFlowTheme.of(context)
                                                        .graSet23,
                                                    FlutterFlowTheme.of(context)
                                                        .graSet22
                                                  ],
                                                  stops: const [0.0, 1.0],
                                                  begin: const AlignmentDirectional(
                                                      -1.0, 0.0),
                                                  end: const AlignmentDirectional(
                                                      1.0, 0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .customColor2,
                                                  width: 0.5,
                                                ),
                                              ),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  if (_model
                                                          .createVoteAgreeDataCheckboxValue ==
                                                      true) {
                                                    if (_model
                                                            .regionalElectionValue ==
                                                        true) {
                                                      if (_model.dropDownValue1 !=
                                                              null &&
                                                          _model.dropDownValue1 !=
                                                              '') {
                                                        _model.countryVarMi =
                                                            await DistrictGroup
                                                                .getDistrictCall
                                                                .call(
                                                          id: FFAppState()
                                                              .countryID,
                                                        );
                                                        FFAppState()
                                                            .addToAddVoterToElection(
                                                                'a');
                                                        FFAppState()
                                                            .update(() {});
                                                        if (!(_model
                                                                .countryVarMi
                                                                ?.succeeded ??
                                                            true)) {
                                                          await DistrictGroup
                                                              .addDistrictCall
                                                              .call(
                                                            id: FFAppState()
                                                                .countryID,
                                                            name: _model
                                                                .dropDownValue1,
                                                          );
                                                        }
                                                        if (_model.dropDownValue2 !=
                                                                null &&
                                                            _model.dropDownValue2 !=
                                                                '') {
                                                          _model.cityVarMi =
                                                              await DistrictGroup
                                                                  .getDistrictCall
                                                                  .call(
                                                            id: FFAppState()
                                                                .cityID,
                                                          );
                                                          if (!(_model.cityVarMi
                                                                  ?.succeeded ??
                                                              true)) {
                                                            await DistrictGroup
                                                                .addDistrictCall
                                                                .call(
                                                              id: FFAppState()
                                                                  .cityID,
                                                              name:
                                                                  '${_model.dropDownValue1}, ${_model.dropDownValue2}',
                                                            );
                                                          }
                                                          if (_model.dropDownValue3 !=
                                                                  null &&
                                                              _model.dropDownValue3 !=
                                                                  '') {
                                                            _model.districtVarMi =
                                                                await DistrictGroup
                                                                    .getDistrictCall
                                                                    .call(
                                                              id: FFAppState()
                                                                  .districtID,
                                                            );
                                                            if (!(_model
                                                                    .districtVarMi
                                                                    ?.succeeded ??
                                                                true)) {
                                                              await DistrictGroup
                                                                  .addDistrictCall
                                                                  .call(
                                                                id: FFAppState()
                                                                    .districtID,
                                                                name:
                                                                    '${_model.dropDownValue1}, ${_model.dropDownValue2}, ${_model.dropDownValue3}',
                                                              );
                                                            }
                                                            if (_model.dropDownValue4 !=
                                                                    null &&
                                                                _model.dropDownValue4 !=
                                                                    '') {
                                                              _model.neighborhoodVarMi =
                                                                  await DistrictGroup
                                                                      .getDistrictCall
                                                                      .call(
                                                                id: FFAppState()
                                                                    .neighborhoodID,
                                                              );
                                                              if (!(_model
                                                                      .neighborhoodVarMi
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                await DistrictGroup
                                                                    .addDistrictCall
                                                                    .call(
                                                                  id: FFAppState()
                                                                      .neighborhoodID,
                                                                  name:
                                                                      '${_model.dropDownValue1}, ${_model.dropDownValue2}, ${_model.dropDownValue3}, ${_model.dropDownValue4}',
                                                                );
                                                              }
                                                              _model.sendNeigh =
                                                                  await DistrictGroup
                                                                      .addDistrictToElectionCall
                                                                      .call(
                                                                id: FFAppState()
                                                                    .neighborhoodID,
                                                                electionID:
                                                                    FFAppState()
                                                                        .electionID,
                                                              );
                                                              FFAppState()
                                                                  .addVoterToElection = [];
                                                              FFAppState()
                                                                  .update(
                                                                      () {});
                                                              await ElectionsTable()
                                                                  .update(
                                                                data: {
                                                                  'district_id':
                                                                      FFAppState()
                                                                          .neighborhoodID,
                                                                  'voters_wallet_id':
                                                                      FFAppState()
                                                                          .addVoterToElection,
                                                                },
                                                                matchingRows:
                                                                    (rows) =>
                                                                        rows.eq(
                                                                  'id',
                                                                  FFAppState()
                                                                      .electionID,
                                                                ),
                                                              );

                                                              context.goNamed(
                                                                'OylamaOlusturP4',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      const TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            10),
                                                                  ),
                                                                },
                                                              );

                                                              FFAppState()
                                                                      .electionDistrict =
                                                                  FFAppState()
                                                                      .neighborhoodID;
                                                              FFAppState()
                                                                  .update(
                                                                      () {});
                                                            } else {
                                                              _model.sendDistrict =
                                                                  await DistrictGroup
                                                                      .addDistrictToElectionCall
                                                                      .call(
                                                                id: FFAppState()
                                                                    .districtID,
                                                                electionID:
                                                                    FFAppState()
                                                                        .electionID,
                                                              );
                                                              FFAppState()
                                                                  .addVoterToElection = [];
                                                              FFAppState()
                                                                  .update(
                                                                      () {});
                                                              await ElectionsTable()
                                                                  .update(
                                                                data: {
                                                                  'district_id':
                                                                      FFAppState()
                                                                          .districtID,
                                                                  'voters_wallet_id':
                                                                      FFAppState()
                                                                          .addVoterToElection,
                                                                },
                                                                matchingRows:
                                                                    (rows) =>
                                                                        rows.eq(
                                                                  'id',
                                                                  FFAppState()
                                                                      .electionID,
                                                                ),
                                                              );

                                                              context.goNamed(
                                                                'OylamaOlusturP4',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      const TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            10),
                                                                  ),
                                                                },
                                                              );

                                                              FFAppState()
                                                                      .electionDistrict =
                                                                  FFAppState()
                                                                      .districtID;
                                                              FFAppState()
                                                                  .update(
                                                                      () {});
                                                            }
                                                          } else {
                                                            _model.sendCity =
                                                                await DistrictGroup
                                                                    .addDistrictToElectionCall
                                                                    .call(
                                                              id: FFAppState()
                                                                  .cityID,
                                                              electionID:
                                                                  FFAppState()
                                                                      .electionID,
                                                            );
                                                            FFAppState()
                                                                .addVoterToElection = [];
                                                            FFAppState()
                                                                .update(() {});
                                                            await ElectionsTable()
                                                                .update(
                                                              data: {
                                                                'district_id':
                                                                    FFAppState()
                                                                        .cityID,
                                                                'voters_wallet_id':
                                                                    FFAppState()
                                                                        .addVoterToElection,
                                                              },
                                                              matchingRows:
                                                                  (rows) =>
                                                                      rows.eq(
                                                                'id',
                                                                FFAppState()
                                                                    .electionID,
                                                              ),
                                                            );

                                                            context.goNamed(
                                                              'OylamaOlusturP4',
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          10),
                                                                ),
                                                              },
                                                            );

                                                            FFAppState()
                                                                    .electionDistrict =
                                                                FFAppState()
                                                                    .cityID;
                                                            FFAppState()
                                                                .update(() {});
                                                          }
                                                        } else {
                                                          _model.sendCountry =
                                                              await DistrictGroup
                                                                  .addDistrictToElectionCall
                                                                  .call(
                                                            id: FFAppState()
                                                                .countryID,
                                                            electionID:
                                                                FFAppState()
                                                                    .electionID,
                                                          );
                                                          FFAppState()
                                                              .addVoterToElection = [];
                                                          FFAppState()
                                                              .update(() {});
                                                          await ElectionsTable()
                                                              .update(
                                                            data: {
                                                              'district_id':
                                                                  FFAppState()
                                                                      .countryID,
                                                              'voters_wallet_id':
                                                                  FFAppState()
                                                                      .addVoterToElection,
                                                            },
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'id',
                                                              FFAppState()
                                                                  .electionID,
                                                            ),
                                                          );

                                                          context.goNamed(
                                                            'OylamaOlusturP4',
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  const TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        10),
                                                              ),
                                                            },
                                                          );

                                                          FFAppState()
                                                                  .electionDistrict =
                                                              FFAppState()
                                                                  .countryID;
                                                          FFAppState()
                                                              .update(() {});
                                                        }
                                                      } else {
                                                        if (FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'en') {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'You Can\'t Create a Regional Vote!'),
                                                                content: const Text(
                                                                    'Please enter your address information to create a regional poll.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'OK'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'Bölgesel Oylama Oluşturamazsın!'),
                                                                content: const Text(
                                                                    'Bölgesel bir oylama oluşturmak için adres bilgilerini lütfen gir.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'Tamam'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        }
                                                      }
                                                    } else {
                                                      if ((FFAppState()
                                                              .addVoterToElection
                                                              .isNotEmpty) ==
                                                          true) {
                                                        if (_model
                                                                .addMyselfVoterValue ==
                                                            true) {
                                                          FFAppState().addToAddVoterToElection(
                                                              oylamaOlusturP3UsersRow
                                                                  .walletIdVoter);
                                                          FFAppState()
                                                              .update(() {});
                                                          await ElectionsTable()
                                                              .update(
                                                            data: {
                                                              'voters_wallet_id':
                                                                  FFAppState()
                                                                      .addVoterToElection,
                                                            },
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'name',
                                                              FFAppState()
                                                                  .electionName,
                                                            ),
                                                          );
                                                          await VoterGroup
                                                              .addVoterToElectionCall
                                                              .call(
                                                            wallet: oylamaOlusturP3UsersRow
                                                                .walletIdVoter,
                                                            electionID:
                                                                FFAppState()
                                                                    .electionID,
                                                          );
                                                          _model.sendCountry3 =
                                                              await DistrictGroup
                                                                  .addDistrictToElectionCall
                                                                  .call(
                                                            id: '00',
                                                            electionID:
                                                                FFAppState()
                                                                    .electionID,
                                                          );
                                                          await ElectionsTable()
                                                              .update(
                                                            data: {
                                                              'district_id':
                                                                  '00',
                                                            },
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'id',
                                                              FFAppState()
                                                                  .electionID,
                                                            ),
                                                          );
                                                          FFAppState()
                                                              .addVoterToElection = [];
                                                          FFAppState()
                                                              .update(() {});

                                                          context.goNamed(
                                                            'OylamaOlusturP4',
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  const TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        10),
                                                              ),
                                                            },
                                                          );
                                                        } else {
                                                          _model.sendCountry2 =
                                                              await DistrictGroup
                                                                  .addDistrictToElectionCall
                                                                  .call(
                                                            id: '00',
                                                            electionID:
                                                                FFAppState()
                                                                    .electionID,
                                                          );
                                                          await ElectionsTable()
                                                              .update(
                                                            data: {
                                                              'district_id':
                                                                  '00',
                                                            },
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'id',
                                                              FFAppState()
                                                                  .electionID,
                                                            ),
                                                          );

                                                          context.goNamed(
                                                            'OylamaOlusturP4',
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  const TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        10),
                                                              ),
                                                            },
                                                          );
                                                        }
                                                      } else {
                                                        if (FFLocalizations.of(
                                                                    context)
                                                                .languageCode ==
                                                            'en') {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'You Can\'t Create a Custom Vote!'),
                                                                content: const Text(
                                                                    'Please enter voter\'s wallet id.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'OK'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'Özel Oylama Oluşturamazsın!'),
                                                                content: const Text(
                                                                    'Lütfen seçmenin cüzdan numarasını girin.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'Tamam'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        }
                                                      }
                                                    }
                                                  } else {
                                                    if (FFLocalizations.of(
                                                                context)
                                                            .languageCode ==
                                                        'en') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'You can\'t create a voting!'),
                                                            content: const Text(
                                                                'You need to approve the conditions to create a voting.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    const Text('OK'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Oylama Oluşturamazsın!'),
                                                            content: const Text(
                                                                'Oylama oluşturmak için koşulları onaylaman gerekiyor.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child: const Text(
                                                                    'Tamam'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  }

                                                  setState(() {});
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '9k0yx9my' /* Continue */,
                                                ),
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_right_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .text1,
                                                  size: 28.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 350.0,
                                                  height: 50.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Colors.transparent,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .text1,
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
        );
      },
    );
  }
}
