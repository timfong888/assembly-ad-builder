import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../list_catalog/list_catalog_widget.dart';
import '../listof_ads/listof_ads_widget.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayFullAdWidget extends StatefulWidget {
  const DisplayFullAdWidget({
    Key key,
    this.recIssue,
    this.recCatalog,
    this.recAd,
    this.recQuiz,
  }) : super(key: key);

  final IssuesRecord recIssue;
  final CatalogRecord recCatalog;
  final AdsRecord recAd;
  final QuizzesRecord recQuiz;

  @override
  _DisplayFullAdWidgetState createState() => _DisplayFullAdWidgetState();
}

class _DisplayFullAdWidgetState extends State<DisplayFullAdWidget> {
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
                      Text(
                        '> List Issues',
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
                              builder: (context) => ListofAdsWidget(
                                recIssue: widget.recIssue,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          '   > List Ads ',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
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
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.recIssue.ballotID,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            widget.recIssue.title,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Text(
                            widget.recAd.headline,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            widget.recAd.summary,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: custom_widgets.MarkdownWidget(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.5,
                              markdownData: widget.recAd.argument,
                            ),
                          ),
                          Text(
                            widget.recQuiz.question1,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            functions.returnQuizAnswer(widget.recQuiz, 1, 1),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Text(
                            functions.returnQuizAnswer(widget.recQuiz, 1, 1),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Text(
                            functions.returnQuizAnswer(widget.recQuiz, 1, 1),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Text(
                            functions.returnQuizAnswer(widget.recQuiz, 1, 1),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ],
                      ),
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
