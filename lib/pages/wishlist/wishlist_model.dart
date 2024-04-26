import '/components/logo_name_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wishlist_widget.dart' show WishlistWidget;
import 'package:flutter/material.dart';

class WishlistModel extends FlutterFlowModel<WishlistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for LogoName component.
  late LogoNameModel logoNameModel;
  // Stores action output result for [Custom Action - addToCart] action in DarkButton widget.
  dynamic addToCartResult;

  @override
  void initState(BuildContext context) {
    logoNameModel = createModel(context, () => LogoNameModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    logoNameModel.dispose();
  }
}
