import '/flutter_flow/flutter_flow_util.dart';
import 'thank_you_widget.dart' show ThankYouWidget;
import 'package:flutter/material.dart';

class ThankYouModel extends FlutterFlowModel<ThankYouWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
