import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/news_list/news_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for newsList component.
  late NewsListModel newsListModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    newsListModel = createModel(context, () => NewsListModel());
  }

  void dispose() {
    unfocusNode.dispose();
    newsListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
