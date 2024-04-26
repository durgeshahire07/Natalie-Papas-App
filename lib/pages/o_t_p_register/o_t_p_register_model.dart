import '/flutter_flow/flutter_flow_util.dart';
import 'o_t_p_register_widget.dart' show OTPRegisterWidget;
import 'package:flutter/material.dart';

class OTPRegisterModel extends FlutterFlowModel<OTPRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
