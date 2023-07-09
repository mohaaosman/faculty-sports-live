import '/components/playerslistview/playerslistview_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeamPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for playerslistview component.
  late PlayerslistviewModel playerslistviewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    playerslistviewModel = createModel(context, () => PlayerslistviewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    playerslistviewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
