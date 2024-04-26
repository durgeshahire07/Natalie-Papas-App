import '/components/custom_navbar_widget.dart';
import '/components/logo_name_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial_page_widget.dart' show TutorialPageWidget;
import 'package:flutter/material.dart';

class TutorialPageModel extends FlutterFlowModel<TutorialPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel;
  // Model for LogoName component.
  late LogoNameModel logoNameModel;

  @override
  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
    logoNameModel = createModel(context, () => LogoNameModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customNavbarModel.dispose();
    logoNameModel.dispose();
  }
}
