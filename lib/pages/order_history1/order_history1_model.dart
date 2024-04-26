import '/components/navbar_three_icons_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_history1_widget.dart' show OrderHistory1Widget;
import 'package:flutter/material.dart';

class OrderHistory1Model extends FlutterFlowModel<OrderHistory1Widget> {
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
