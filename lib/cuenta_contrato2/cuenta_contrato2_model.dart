import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class CuentaContrato2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;
  // State field(s) for NumeroCuentaContrato widget.
  TextEditingController? numeroCuentaContratoController;
  final numeroCuentaContratoMask = MaskTextInputFormatter(mask: '8');
  String? Function(BuildContext, String?)?
      numeroCuentaContratoControllerValidator;
  String? _numeroCuentaContratoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'este campo es obligatorio';
    }

    if (val.length > 8) {
      return 'El numero de cuenta contrato tiene maximo de 8 digitos';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    numeroCuentaContratoControllerValidator =
        _numeroCuentaContratoControllerValidator;
  }

  void dispose() {
    numeroCuentaContratoController?.dispose();
  }

  /// Additional helper methods are added here.

}
