import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'logo_name_model.dart';
export 'logo_name_model.dart';

class LogoNameWidget extends StatefulWidget {
  const LogoNameWidget({super.key});

  @override
  State<LogoNameWidget> createState() => _LogoNameWidgetState();
}

class _LogoNameWidgetState extends State<LogoNameWidget> {
  late LogoNameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoNameModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: SvgPicture.asset(
        'assets/images/nplogop.svg',
        width: 130.0,
        height: 28.0,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
