import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sifremi_degistir_model.dart';
export 'sifremi_degistir_model.dart';

class SifremiDegistirWidget extends StatefulWidget {
  const SifremiDegistirWidget({super.key});

  @override
  State<SifremiDegistirWidget> createState() => _SifremiDegistirWidgetState();
}

class _SifremiDegistirWidgetState extends State<SifremiDegistirWidget> {
  late SifremiDegistirModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SifremiDegistirModel());

    _model.eskiSifreTextController ??= TextEditingController();
    _model.eskiSifreFocusNode ??= FocusNode();

    _model.yeniSifre1TextController ??= TextEditingController();
    _model.yeniSifre1FocusNode ??= FocusNode();

    _model.yeniSifre2TextController ??= TextEditingController();
    _model.yeniSifre2FocusNode ??= FocusNode();
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
        List<UsersRow> sifremiDegistirUsersRowList = snapshot.data!;
        final sifremiDegistirUsersRow = sifremiDegistirUsersRowList.isNotEmpty
            ? sifremiDegistirUsersRowList.first
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
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).text1,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
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
                  child: FlutterFlowIconButton(
                    borderColor: const Color(0x004B39EF),
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: const Color(0x004B39EF),
                    icon: Icon(
                      Icons.contact_support_outlined,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('YardimMerkezi');
                    },
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.8,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '4x16j5js' /* Change My Password */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                Icons.password,
                                color: FlutterFlowTheme.of(context).text1,
                                size: 50.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 340.0,
                            child: Divider(
                              height: 30.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).customColor2,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 40.0, 40.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'h7s7jor5' /* Please enter your new password... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .text1,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 30.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller:
                                            _model.eskiSifreTextController,
                                        focusNode: _model.eskiSifreFocusNode,
                                        autofocus: false,
                                        obscureText:
                                            !_model.eskiSifreVisibility,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'uqvuwo8s' /* Your old password */,
                                          ),
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textfieldHintText,
                                                letterSpacing: 0.0,
                                              ),
                                          alignLabelWithHint: false,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mavi,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mavi,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .customColor2,
                                          contentPadding: const EdgeInsets.all(10.0),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => _model.eskiSifreVisibility =
                                                  !_model.eskiSifreVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.eskiSifreVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .text1,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .text1,
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.center,
                                        validator: _model
                                            .eskiSifreTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 30.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller:
                                            _model.yeniSifre1TextController,
                                        focusNode: _model.yeniSifre1FocusNode,
                                        autofocus: false,
                                        obscureText:
                                            !_model.yeniSifre1Visibility,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'atc8esii' /* Your new password */,
                                          ),
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textfieldHintText,
                                                letterSpacing: 0.0,
                                              ),
                                          alignLabelWithHint: false,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mavi,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mavi,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .customColor2,
                                          contentPadding: const EdgeInsets.all(10.0),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => _model
                                                      .yeniSifre1Visibility =
                                                  !_model.yeniSifre1Visibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.yeniSifre1Visibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .text1,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .text1,
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.center,
                                        validator: _model
                                            .yeniSifre1TextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 30.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller:
                                            _model.yeniSifre2TextController,
                                        focusNode: _model.yeniSifre2FocusNode,
                                        autofocus: false,
                                        obscureText:
                                            !_model.yeniSifre2Visibility,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'lvsij8kk' /* Renter your new password */,
                                          ),
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textfieldHintText,
                                                letterSpacing: 0.0,
                                              ),
                                          alignLabelWithHint: false,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mavi,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .mavi,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .customColor2,
                                          contentPadding: const EdgeInsets.all(10.0),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => _model
                                                      .yeniSifre2Visibility =
                                                  !_model.yeniSifre2Visibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.yeniSifre2Visibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .text1,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .text1,
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.center,
                                        validator: _model
                                            .yeniSifre2TextControllerValidator
                                            .asValidator(context),
                                      ),
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
                                        _model.eskiSifreCheck =
                                            await actions.hashingIDPassword(
                                          _model.eskiSifreTextController.text,
                                          '9pVAnaMCfk',
                                        );
                                        if (_model.eskiSifreCheck ==
                                            sifremiDegistirUsersRow
                                                ?.passwordOther) {
                                          if (_model.yeniSifre1TextController
                                                  .text ==
                                              _model.yeniSifre2TextController
                                                  .text) {
                                            _model.yeniSifre =
                                                await actions.hashingIDPassword(
                                              _model.yeniSifre1TextController
                                                  .text,
                                              '9pVAnaMCfk',
                                            );
                                            if (_model.yeniSifre ==
                                                sifremiDegistirUsersRow
                                                    ?.passwordOther) {
                                              if (FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'tr') {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          'Şifreler aynı!'),
                                                      content: const Text(
                                                          'e-lection\'da bulunan hesabınızın şifresi ile yeni girdiğiniz şifre aynı. Lüften farklı bir şifre giriniz.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
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
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          'The passwords are same!'),
                                                      content: const Text(
                                                          'The password for your account in e-lection is the same as the new password that you entered. Please enter a different password.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }
                                            } else {
                                              await UsersTable().update(
                                                data: {
                                                  'password_other':
                                                      _model.yeniSifre,
                                                },
                                                matchingRows: (rows) => rows.eq(
                                                  'id',
                                                  FFAppState().userIDNum,
                                                ),
                                              );
                                              if (FFLocalizations.of(context)
                                                      .languageCode ==
                                                  'tr') {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          'Şifreniz değiştirildi!'),
                                                      content: const Text(
                                                          'Şifrenizi başarıyla değiştirdiniz. Lütfen e-lection\'a tekrar giriş yapın.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
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
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          'Your password has been changed!'),
                                                      content: const Text(
                                                          'You have successfully changed your password. Please log in to e-lection again.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('OK'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }

                                              FFAppState().userPassword = '';
                                              FFAppState().userIDNum = '';
                                              FFAppState().update(() {});

                                              context.goNamed('Giris');
                                            }
                                          } else {
                                            if (FFLocalizations.of(context)
                                                    .languageCode ==
                                                'tr') {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: const Text(
                                                        'Şifreler aynı değil!'),
                                                    content: const Text(
                                                        'Girdiğiniz şifreler aynı değil.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
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
                                                        'The passwords are not the same!'),
                                                    content: const Text(
                                                        'The passwords you entered are not the same.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: const Text('OK'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            }
                                          }
                                        } else {
                                          if (FFLocalizations.of(context)
                                                  .languageCode ==
                                              'tr') {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text(
                                                      'Eski şifreniz hatalı!'),
                                                  content: const Text(
                                                      'Eski şifrenizi yanlış girdiniz.'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
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
                                                      'Your old password is incorrect!'),
                                                  content: const Text(
                                                      'You entered your old password incorrectly.'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
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
                                        'abj15fg2' /* Next */,
                                      ),
                                      options: FFButtonOptions(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x00067BB7),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
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
