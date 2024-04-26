import '/components/navbar_three_icons_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'orderhistory2_widget.dart' show Orderhistory2Widget;
import 'package:flutter/material.dart';

class Orderhistory2Model extends FlutterFlowModel<Orderhistory2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navbarThreeIcons component.
  late NavbarThreeIconsModel navbarThreeIconsModel;

  @override
  void initState(BuildContext context) {
    navbarThreeIconsModel = createModel(context, () => NavbarThreeIconsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarThreeIconsModel.dispose();
  }
}
