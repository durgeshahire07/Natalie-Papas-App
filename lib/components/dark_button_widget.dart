import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dark_button_model.dart';
export 'dark_button_model.dart';

class DarkButtonWidget extends StatefulWidget {
  const DarkButtonWidget({
    super.key,
    String? buttonAction,
    this.componentName,
  }) : buttonAction = buttonAction ?? 'action';

  final String buttonAction;
  final Widget? componentName;

  @override
  State<DarkButtonWidget> createState() => _DarkButtonWidgetState();
}

class _DarkButtonWidgetState extends State<DarkButtonWidget> {
  late DarkButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DarkButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.componentName!,
              Text(
                widget.buttonAction,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ].divide(const SizedBox(width: 7.0)),
          ),
        ),
      ),
    );
  }
}
