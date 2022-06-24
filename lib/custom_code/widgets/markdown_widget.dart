// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownCustomWidget extends StatefulWidget {
  const MarkdownCustomWidget({
    Key key,
    this.width,
    this.height,
    this.markdownData,
  }) : super(key: key);

  final double width;
  final double height;
  final String markdownData;

  @override
  _MarkdownCustomWidgetState createState() => _MarkdownCustomWidgetState();
}

class _MarkdownCustomWidgetState extends State<MarkdownCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Markdown(data: widget.markdownData));
  }
}
