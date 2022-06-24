import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

List<String> collectionIssuesToStringList(List<IssuesRecord> documentList) {
  // Add your function code here!

  List<String> collectionIssuesAsStringList;

  return collectionIssuesAsStringList;
}

List<String> quizAnswersasStringList(
  String answer1,
  String answer2,
  String answer3,
  String answer4,
) {
  // Add your function code here!

  List<String> outputQuizAnswersAsStringList;

  outputQuizAnswersAsStringList.add(answer1);
  outputQuizAnswersAsStringList.add(answer2);
  outputQuizAnswersAsStringList.add(answer3);
  outputQuizAnswersAsStringList.add(answer4);

  return outputQuizAnswersAsStringList;
}

String editQuizAnswer(
  int questionNumber,
  List<String> answerList,
  QuizzesRecord recQuiz,
) {
  // Add your function code here!
  String quizAnswer;

  quizAnswer = answerList[questionNumber];
  return quizAnswer;
}
