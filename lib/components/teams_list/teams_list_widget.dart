import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'teams_list_model.dart';
export 'teams_list_model.dart';

class TeamsListWidget extends StatefulWidget {
  const TeamsListWidget({Key? key}) : super(key: key);

  @override
  _TeamsListWidgetState createState() => _TeamsListWidgetState();
}

class _TeamsListWidgetState extends State<TeamsListWidget>
    with TickerProviderStateMixin {
  late TeamsListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamsListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
      child: FutureBuilder<ApiCallResponse>(
        future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
              ..complete(TeamsCall.call()))
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
          final listViewTeamsResponse = snapshot.data!;
          return Builder(
            builder: (context) {
              final teams = TeamsCall.teams(
                    listViewTeamsResponse.jsonBody,
                  )?.toList() ??
                  [];
              return RefreshIndicator(
                onRefresh: () async {
                  setState(() => _model.apiRequestCompleter = null);
                  await _model.waitForApiRequestCompleted();
                },
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: teams.length,
                  itemBuilder: (context, teamsIndex) {
                    final teamsItem = teams[teamsIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 1.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'TeamPage',
                            queryParameters: {
                              'coachName': serializeParam(
                                getJsonField(
                                  teamsItem,
                                  r'''$.coach_name''',
                                ).toString(),
                                ParamType.String,
                              ),
                              'coachImage': serializeParam(
                                getJsonField(
                                  teamsItem,
                                  r'''$.coach_image''',
                                ),
                                ParamType.String,
                              ),
                              'teamName': serializeParam(
                                getJsonField(
                                  teamsItem,
                                  r'''$.name''',
                                ).toString(),
                                ParamType.String,
                              ),
                              'teamId': serializeParam(
                                getJsonField(
                                  teamsItem,
                                  r'''$.id''',
                                ),
                                ParamType.int,
                              ),
                              'description': serializeParam(
                                getJsonField(
                                  teamsItem,
                                  r'''$.description''',
                                ).toString(),
                                ParamType.String,
                              ),
                              'teamImage': serializeParam(
                                getJsonField(
                                  teamsItem,
                                  r'''$.image''',
                                ),
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: Color(0xFFE0E3E7),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40.0),
                                  child: Image.network(
                                    getJsonField(
                                      teamsItem,
                                      r'''$.image''',
                                    ),
                                    width: 60.0,
                                    height: 60.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            teamsItem,
                                            r'''$.name''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF14181B),
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                getJsonField(
                                                  teamsItem,
                                                  r'''$.coach_name''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF57636C),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF1F4F8),
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 4.0, 4.0, 4.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color: Color(0xFF57636C),
                                      size: 24.0,
                                    ),
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
      ),
    );
  }
}
