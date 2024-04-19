import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratice/ls_container.dart';
import 'package:pratice/observer.dart';
import 'package:pratice/v.1/common/theme/theme_app.dart';
import 'package:pratice/v.1/presentation/bloc/export.dart';

import 'v.1/presentation/view/view.dart';

void main(List<String> args) async {
  Bloc.observer = BlocObserverApp();
  await init();
  runApp(const MyEntryPoint());
}

class MyEntryPoint extends StatefulWidget {
  const MyEntryPoint({super.key});

  @override
  State<MyEntryPoint> createState() => _MyEntryPointState();
}

class _MyEntryPointState extends State<MyEntryPoint> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductBloc>(
      create: (context) => ls()..add(ProductsStartedEvent()),
      child: MaterialApp(
        theme: themeData(),
        debugShowCheckedModeBanner: false,
        home: const ViewApp(),
      ),
    );
  }
}
