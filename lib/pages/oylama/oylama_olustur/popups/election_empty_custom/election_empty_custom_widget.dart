import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'election_empty_custom_model.dart';
export 'election_empty_custom_model.dart';

class ElectionEmptyCustomWidget extends StatefulWidget {
  const ElectionEmptyCustomWidget({super.key});

  @override
  State<ElectionEmptyCustomWidget> createState() =>
      _ElectionEmptyCustomWidgetState();
}

class _ElectionEmptyCustomWidgetState extends State<ElectionEmptyCustomWidget> {
  late ElectionEmptyCustomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ElectionEmptyCustomModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.0, -1.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 55.0, 0.0, 0.0),
            child: Icon(
              Icons.auto_awesome_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 40.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'sgqa1et2' /* You're All Caught Up For Now */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'nmesbi47' /* There are no ongoing custom el... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
