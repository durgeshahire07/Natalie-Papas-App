import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'c_t_a_button_model.dart';
export 'c_t_a_button_model.dart';

class CTAButtonWidget extends StatefulWidget {
  const CTAButtonWidget({
    super.key,
    String? ctaName,
  }) : ctaName = ctaName ?? 'cta';

  final String ctaName;

  @override
  State<CTAButtonWidget> createState() => _CTAButtonWidgetState();
}

class _CTAButtonWidgetState extends State<CTAButtonWidget> {
  late CTAButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CTAButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: widget.ctaName,
      options: FFButtonOptions(
        height: 35.0,
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primaryText,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Readex Pro',
              color: Colors.white,
              fontSize: 12.0,
              letterSpacing: 0.0,
            ),
        elevation: 3.0,
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).primaryText,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(0.0),
      ),
    );
  }
}
