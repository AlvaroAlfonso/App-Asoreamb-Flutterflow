import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditarFormularioPerfil2Model extends FlutterFlowModel {
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
  // State field(s) for CelularField widget.
  TextEditingController? celularFieldController;
  final celularFieldMask = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? celularFieldControllerValidator;
  // State field(s) for DireccionField widget.
  TextEditingController? direccionFieldController;
  String? Function(BuildContext, String?)? direccionFieldControllerValidator;
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

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nombreFieldController?.dispose();
    apellidoFieldController?.dispose();
    emailFieldController?.dispose();
    celularFieldController?.dispose();
    direccionFieldController?.dispose();
    detalleDireccionTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
