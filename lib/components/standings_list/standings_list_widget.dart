import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'standings_list_model.dart';
export 'standings_list_model.dart';

class StandingsListWidget extends StatefulWidget {
  const StandingsListWidget({Key? key}) : super(key: key);

  @override
  _StandingsListWidgetState createState() => _StandingsListWidgetState();
}

class _StandingsListWidgetState extends State<StandingsListWidget> {
  late StandingsListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StandingsListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
            ..complete(NewsCall.call()))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final listViewNewsResponse = snapshot.data!;
        return Builder(
          builder: (context) {
            final articles = NewsCall.articles(
                  listViewNewsResponse.jsonBody,
                )?.toList() ??
                [];
            return RefreshIndicator(
              onRefresh: () async {
                setState(() => _model.apiRequestCompleter = null);
                await _model.waitForApiRequestCompleted();
              },
              child: ListView.builder(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: articles.length,
                itemBuilder: (context, articlesIndex) {
                  final articlesItem = articles[articlesIndex];
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'ArticleView',
                          queryParameters: {
                            'title': serializeParam(
                              getJsonField(
                                articlesItem,
                                r'''$.title''',
                              ).toString(),
                              ParamType.String,
                            ),
                            'imageUrl': serializeParam(
                              getJsonField(
                                articlesItem,
                                r'''$.image''',
                              ),
                              ParamType.String,
                            ),
                            'content': serializeParam(
                              getJsonField(
                                articlesItem,
                                r'''$.content''',
                              ).toString(),
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7.0,
                              color: Color(0x2F1D2429),
                              offset: Offset(0.0, 3.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  getJsonField(
                                    articlesItem,
                                    r'''$.image''',
                                  ),
                                  width: double.infinity,
                                  height: 140.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
