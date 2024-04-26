import '/components/dark_button_widget.dart';
import '/components/logo_name_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'produce_tools_widget.dart' show ProduceToolsWidget;
import 'package:flutter/material.dart';

class ProduceToolsModel extends FlutterFlowModel<ProduceToolsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for LogoName component.
  late LogoNameModel logoNameModel;
  // Model for DarkButton component.
  late DarkButtonModel darkButtonModel;

  @override
  void initState(BuildContext context) {
    logoNameModel = createModel(context, () => LogoNameModel());
    darkButtonModel = createModel(context, () => DarkButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    logoNameModel.dispose();
    darkButtonModel.dispose();
  }
}
