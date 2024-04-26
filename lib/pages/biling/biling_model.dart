import '/components/dark_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'biling_widget.dart' show BilingWidget;
import 'package:flutter/material.dart';

class BilingModel extends FlutterFlowModel<BilingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Lastname widget.
  FocusNode? lastnameFocusNode;
  TextEditingController? lastnameTextController;
  String? Function(BuildContext, String?)? lastnameTextControllerValidator;
  String? _lastnameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Country widget.
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? Function(BuildContext, String?)? countryTextControllerValidator;
  String? _countryTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CompanyName widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameTextController;
  String? Function(BuildContext, String?)? companyNameTextControllerValidator;
  // State field(s) for Appartment widget.
  FocusNode? appartmentFocusNode;
  TextEditingController? appartmentTextController;
  String? Function(BuildContext, String?)? appartmentTextControllerValidator;
  // State field(s) for Town widget.
  FocusNode? townFocusNode;
  TextEditingController? townTextController;
  String? Function(BuildContext, String?)? townTextControllerValidator;
  String? _townTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for State widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  String? _stateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ZipCode widget.
  FocusNode? zipCodeFocusNode;
  TextEditingController? zipCodeTextController;
  String? Function(BuildContext, String?)? zipCodeTextControllerValidator;
  String? _zipCodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Enter Correct Email';
    }
    return null;
  }

  // State field(s) for OrderNotes widget.
  FocusNode? orderNotesFocusNode;
  TextEditingController? orderNotesTextController;
  String? Function(BuildContext, String?)? orderNotesTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // Model for DarkButton component.
  late DarkButtonModel darkButtonModel;

  @override
  void initState(BuildContext context) {
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    lastnameTextControllerValidator = _lastnameTextControllerValidator;
    countryTextControllerValidator = _countryTextControllerValidator;
    townTextControllerValidator = _townTextControllerValidator;
    stateTextControllerValidator = _stateTextControllerValidator;
    zipCodeTextControllerValidator = _zipCodeTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    darkButtonModel = createModel(context, () => DarkButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastnameFocusNode?.dispose();
    lastnameTextController?.dispose();

    countryFocusNode?.dispose();
    countryTextController?.dispose();

    companyNameFocusNode?.dispose();
    companyNameTextController?.dispose();

    appartmentFocusNode?.dispose();
    appartmentTextController?.dispose();

    townFocusNode?.dispose();
    townTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    zipCodeFocusNode?.dispose();
    zipCodeTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    orderNotesFocusNode?.dispose();
    orderNotesTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController12?.dispose();

    darkButtonModel.dispose();
  }
}
