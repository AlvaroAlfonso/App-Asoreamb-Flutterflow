import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NombreField widget.
  TextEditingController? nombreFieldController;
  String? Function(BuildContext, String?)? nombreFieldControllerValidator;
  // State field(s) for ApellidoField widget.
  TextEditingController? apellidoFieldController;
  String? Function(BuildContext, String?)? apellidoFieldControllerValidator;
  // State field(s) for EmailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for DireccionField widget.
  final direccionFieldKey1 = GlobalKey();
  TextEditingController? direccionFieldController1;
  String? direccionFieldSelectedOption1;
  String? Function(BuildContext, String?)? direccionFieldController1Validator;
  // State field(s) for DireccionField widget.
  final direccionFieldKey2 = GlobalKey();
  TextEditingController? direccionFieldController2;
  String? direccionFieldSelectedOption2;
  String? Function(BuildContext, String?)? direccionFieldController2Validator;
  // State field(s) for Ciudad-DropDown widget.
  String? ciudadDropDownValue;
  FormFieldController<String>? ciudadDropDownValueController;
  // State field(s) for Localidad-DropDown widget.
  String? localidadDropDownValue;
  FormFieldController<String>? localidadDropDownValueController;
  // State field(s) for Barrio-DropDown widget.
  String? barrioDropDownValue;
  FormFieldController<String>? barrioDropDownValueController;
  // State field(s) for DetalleDireccion-TextField widget.
  TextEditingController? detalleDireccionTextFieldController;
  String? Function(BuildContext, String?)?
      detalleDireccionTextFieldControllerValidator;
  // Model for appBar component.
  late AppBarModel appBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  void dispose() {
    nombreFieldController?.dispose();
    apellidoFieldController?.dispose();
    emailFieldController?.dispose();
    detalleDireccionTextFieldController?.dispose();
    appBarModel.dispose();
  }

  /// Additional helper methods are added here.

}
