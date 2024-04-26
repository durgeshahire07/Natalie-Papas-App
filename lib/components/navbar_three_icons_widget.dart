import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'navbar_three_icons_model.dart';
export 'navbar_three_icons_model.dart';

class NavbarThreeIconsWidget extends StatefulWidget {
  const NavbarThreeIconsWidget({super.key});

  @override
  State<NavbarThreeIconsWidget> createState() => _NavbarThreeIconsWidgetState();
}

class _NavbarThreeIconsWidgetState extends State<NavbarThreeIconsWidget> {
  late NavbarThreeIconsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarThreeIconsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: Image.asset(
            'assets/images/npapas.png',
            width: 130.0,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('Wishlist');
              },
              child: Icon(
                Icons.favorite_border,
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('MyBag');
              },
              child: Icon(
                Icons.shopping_cart_outlined,
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
            ),
          ].divide(const SizedBox(width: 15.0)),
        ),
      ],
    );
  }
}
