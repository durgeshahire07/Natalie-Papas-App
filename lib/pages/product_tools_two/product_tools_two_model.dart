import '/components/custom_navbar_widget.dart';
import '/components/navbar_three_icons_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_tools_two_widget.dart' show ProductToolsTwoWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductToolsTwoModel extends FlutterFlowModel<ProductToolsTwoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
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
