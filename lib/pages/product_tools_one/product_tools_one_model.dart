import '/components/custom_navbar_widget.dart';
import '/components/navbar_three_icons_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_tools_one_widget.dart' show ProductToolsOneWidget;
import 'package:flutter/material.dart';

class ProductToolsOneModel extends FlutterFlowModel<ProductToolsOneWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel;
  // Model for navbarThreeIcons component.
  late NavbarThreeIconsModel navbarThreeIconsModel;

  @override
  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
    navbarThreeIconsModel = createModel(context, () => NavbarThreeIconsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customNavbarModel.dispose();
    navbarThreeIconsModel.dispose();
  }
}
