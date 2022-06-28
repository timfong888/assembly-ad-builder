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

List<String> collectionIssuesToStringList(List<IssuesRecord>? documentList) {
  // Add your function code here!

  List<String> collectionIssuesAsStringList = [];

  return collectionIssuesAsStringList;
}

List<String> quizAnswersasStringList(
  String? answer1,
  String? answer2,
  String? answer3,
  String? answer4,
) {
  // Add your function code here!

  List<String> outputQuizAnswersAsStringList = [];

  outputQuizAnswersAsStringList.add(answer1);
  outputQuizAnswersAsStringList.add(answer2);
  outputQuizAnswersAsStringList.add(answer3);
  outputQuizAnswersAsStringList.add(answer4);

  return outputQuizAnswersAsStringList;
}

List<String> quizAnswersasStringList2(
  String? answer1,
  String? answer2,
  String? answer3,
  String? answer4,
  String? correctAnswer,
  double? correctAnswerIndex,
) {
  // Add your function code here!

  List<String> outputQuizAnswersAsStringList = [];

  outputQuizAnswersAsStringList.add(answer1);
  outputQuizAnswersAsStringList.add(answer2);
  outputQuizAnswersAsStringList.add(answer3);
  outputQuizAnswersAsStringList.add(answer4);

  return outputQuizAnswersAsStringList;
}

String editQuizAnswer(
  int? questionNumber,
  List<String>? answerList,
  QuizzesRecord? recQuiz,
) {
  // Add your function code here!
  String quizAnswer;

  quizAnswer = answerList[questionNumber];
  return quizAnswer;
}

String returnQuizAnswer(
  QuizzesRecord? recQuiz,
  int? answerNumber,
  int? questionNumber,
) {
  // Add your function code here!
  String answerString;

  if (questionNumber == 1) {
    answerString = recQuiz.q1Answers[answerNumber];
  }

  if (questionNumber == 2) {
    answerString = recQuiz.q2Answers[answerNumber];
  }

  return answerString;
}

List<String> returnQuizAnswerStringList(
  QuizzesRecord? recQuiz,
  int? questionNumber,
  List<String>? answersList,
) {
  // Add your function code here!

  if (questionNumber == 1) {
    int answerIndex = recQuiz.q1correctAnswerIndex.toInt() - 1;
    answersList.insert(answerIndex, recQuiz.q1Correct);
  }

  if (questionNumber == 2) {
    int answerIndex = recQuiz.q2correctAnswerIndex.toInt() - 1;
    answersList.insert(answerIndex, recQuiz.q2Correct);
  }

  return answersList;
}

String logoUrlToString(String? logoUrl) {
  // Add your function code here!
  return logoUrl.toString();
}

bool boolRecQuizExists(QuizzesRecord? recQuiz) {
  // Add your function code here!
  bool boolRec = true;

  if (recQuiz == null) {
    boolRec = false;
  }

  return boolRec;
}

bool boolRecArgExists(AdsRecord? recArg) {
  // Add your function code here!
  bool boolRec = true;

  if (recArg == null) {
    boolRec = false;
  }

  return boolRec;
}
