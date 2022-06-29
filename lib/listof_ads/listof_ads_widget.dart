import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../create_ad/create_ad_widget.dart';
import '../display_full_ad/display_full_ad_widget.dart';
import '../edit_ad/edit_ad_widget.dart';
import '../edit_quiz/edit_quiz_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../list_catalog/list_catalog_widget.dart';
import '../list_issues/list_issues_widget.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListofAdsWidget extends StatefulWidget {
  const ListofAdsWidget({
    Key? key,
    this.recIssue,
    this.recCatalog,
  }) : super(key: key);

  final IssuesRecord? recIssue;
  final CatalogRecord? recCatalog;

  @override
  _ListofAdsWidgetState createState() => _ListofAdsWidgetState();
}

class _ListofAdsWidgetState extends State<ListofAdsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF0081A7),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ListCatalogWidget(),
                            ),
                          );
                        },
                        child: Text(
                          'Catalog Lists',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFDFCDC),
                                  ),
                        ),
                      ),
                      Text(
                        '>  Catalog',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFFDFCDC),
                            ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ListIssuesWidget(
                                recCatalog: widget.recCatalog,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          '>    List Issues >   ',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFDFCDC),
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                        child: Text(
                          widget.recIssue!.ballotID!,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                      Text(
                        widget.recIssue!.title!,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        '   > List Ads',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                        child: Text(
                          'Create Ads  >     Create Quiz >     Create Argument >',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).lineColor,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateAdWidget(
                                  recCatalog: widget.recCatalog,
                                  recIssue: widget.recIssue,
                                ),
                              ),
                            );
                          },
                          text: 'Create Ad',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(300, 0, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            await signOut();
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          child: Text(
                            'Logout',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF0081A7),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF0081A7),
                          ),
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'Headline',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(),
                          alignment:
                              AlignmentDirectional(0, -0.050000000000000044),
                          child: Text(
                            'Summary',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(),
                        alignment:
                            AlignmentDirectional(0, -0.050000000000000044),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 55, 0),
                              child: Text(
                                'Tokens',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                              child: Text(
                                'Edit Argument',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                            ),
                            Text(
                              'Edit Quiz',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                'Review Ad',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Text(
                                'Active',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(),
                    child: StreamBuilder<List<AdsRecord>>(
                      stream: queryAdsRecord(
                        queryBuilder: (adsRecord) => adsRecord.where('issueID',
                            isEqualTo: widget.recIssue!.reference),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color: Color(0xFFFF9D2E),
                              ),
                            ),
                          );
                        }
                        List<AdsRecord> listViewAdsRecordList = snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewAdsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewAdsRecord =
                                listViewAdsRecordList[listViewIndex];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 35, 0),
                                  child: Container(
                                    width: 300,
                                    height: 100,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          listViewAdsRecord!.headline!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 50, 0),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          listViewAdsRecord!.summary!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        listViewAdsRecord!.learnTokens!
                                            .toString(),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      50, 0, 0, 0),
                                  child: Container(
                                    width: 350,
                                    height: 100,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        StreamBuilder<AdsRecord>(
                                          stream: AdsRecord.getDocument(
                                              listViewAdsRecord!.reference),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Color(0xFFFF9D2E),
                                                  ),
                                                ),
                                              );
                                            }
                                            final editAdRAdsRecord =
                                                snapshot.data!;
                                            return FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.edit_sharp,
                                                color: Color(0xFFFF9D2E),
                                                size: 15,
                                              ),
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        EditAdWidget(
                                                      recordAd:
                                                          listViewAdsRecord,
                                                      recordIssue:
                                                          widget.recIssue,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                        StreamBuilder<QuizzesRecord>(
                                          stream: QuizzesRecord.getDocument(
                                              listViewAdsRecord!.refQuiz!),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Color(0xFFFF9D2E),
                                                  ),
                                                ),
                                              );
                                            }
                                            final editQuizzesQuizzesRecord =
                                                snapshot.data!;
                                            return FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.school_outlined,
                                                color: Color(0xFFFF9D2E),
                                                size: 30,
                                              ),
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        EditQuizWidget(
                                                      recordAd:
                                                          listViewAdsRecord,
                                                      recQuiz:
                                                          editQuizzesQuizzesRecord,
                                                      recIssue: widget.recIssue,
                                                      recCatalog:
                                                          widget.recCatalog,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25, 0, 0, 0),
                                          child: StreamBuilder<QuizzesRecord>(
                                            stream: QuizzesRecord.getDocument(
                                                listViewAdsRecord!.refQuiz!),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Color(0xFFFF9D2E),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final showAdQuizzesRecord =
                                                  snapshot.data!;
                                              return FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.remove_red_eye,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiaryColor,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          DisplayFullAdWidget(
                                                        recIssue:
                                                            widget.recIssue,
                                                        recAd:
                                                            listViewAdsRecord,
                                                        recQuiz:
                                                            showAdQuizzesRecord,
                                                        recCatalog:
                                                            widget.recCatalog,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  40, 0, 0, 0),
                                          child: ToggleIcon(
                                            onPressed: () async {
                                              final adsUpdateData =
                                                  createAdsRecordData(
                                                boolActive: !listViewAdsRecord!
                                                    .boolActive!,
                                              );
                                              await listViewAdsRecord!.reference
                                                  .update(adsUpdateData);
                                            },
                                            value:
                                                listViewAdsRecord!.boolActive!,
                                            onIcon: Icon(
                                              Icons.toggle_on,
                                              color: Color(0xFF07CE07),
                                              size: 25,
                                            ),
                                            offIcon: Icon(
                                              Icons.toggle_off,
                                              color: Color(0xFFDE0D0D),
                                              size: 25,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
