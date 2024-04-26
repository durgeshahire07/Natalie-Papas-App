import '/flutter_flow/flutter_flow_util.dart';
import 'lashes_widget.dart' show LashesWidget;
import 'package:flutter/material.dart';

class LashesModel extends FlutterFlowModel<LashesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
