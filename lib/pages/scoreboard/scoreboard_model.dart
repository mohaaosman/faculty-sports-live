import '/components/scoreboardlist/scoreboardlist_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScoreboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for scoreboardlist component.
  late ScoreboardlistModel scoreboardlistModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    scoreboardlistModel = createModel(context, () => ScoreboardlistModel());
  }

  void dispose() {
    unfocusNode.dispose();
    scoreboardlistModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
