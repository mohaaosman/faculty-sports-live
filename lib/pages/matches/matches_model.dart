import '/components/matcheslist/matcheslist_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MatchesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for matcheslist component.
  late MatcheslistModel matcheslistModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    matcheslistModel = createModel(context, () => MatcheslistModel());
  }

  void dispose() {
    unfocusNode.dispose();
    matcheslistModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
