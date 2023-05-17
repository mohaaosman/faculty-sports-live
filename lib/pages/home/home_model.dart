import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/matcheslist/matcheslist_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for matcheslist component.
  late MatcheslistModel matcheslistModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    matcheslistModel = createModel(context, () => MatcheslistModel());
  }

  void dispose() {
    matcheslistModel.dispose();
  }

  /// Additional helper methods are added here.

}
