import '/components/teams_list/teams_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeamsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for teamsList component.
  late TeamsListModel teamsListModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    teamsListModel = createModel(context, () => TeamsListModel());
  }

  void dispose() {
    unfocusNode.dispose();
    teamsListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
