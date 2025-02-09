import '/components/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'd_i_y_lashes_widget.dart' show DIYLashesWidget;
import 'package:flutter/material.dart';

class DIYLashesModel extends FlutterFlowModel<DIYLashesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel;

  @override
  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customNavbarModel.dispose();
  }
}
