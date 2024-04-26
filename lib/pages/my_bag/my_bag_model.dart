import '/components/custom_navbar_widget.dart';
import '/components/dark_button_widget.dart';
import '/components/logo_name_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_bag_widget.dart' show MyBagWidget;
import 'package:flutter/material.dart';

class MyBagModel extends FlutterFlowModel<MyBagWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DarkButton component.
  late DarkButtonModel darkButtonModel;
  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel;
  // Model for LogoName component.
  late LogoNameModel logoNameModel;

  @override
  void initState(BuildContext context) {
    darkButtonModel = createModel(context, () => DarkButtonModel());
    customNavbarModel = createModel(context, () => CustomNavbarModel());
    logoNameModel = createModel(context, () => LogoNameModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    darkButtonModel.dispose();
    customNavbarModel.dispose();
    logoNameModel.dispose();
  }
}
