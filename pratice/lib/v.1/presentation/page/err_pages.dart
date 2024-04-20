import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ErrorPages extends StatefulWidget {
  const ErrorPages({super.key});

  @override
  State<ErrorPages> createState() => _ErrorPagesState();
}

class _ErrorPagesState extends State<ErrorPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('error pages'),
      ),
    );
  }
}
