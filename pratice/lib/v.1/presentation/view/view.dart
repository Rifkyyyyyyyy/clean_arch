import 'package:flutter/material.dart';
import 'package:pratice/v.1/presentation/bloc/export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewApp extends StatefulWidget {
  const ViewApp({super.key});

  @override
  State<ViewApp> createState() => _ViewAppState();
}

class _ViewAppState extends State<ViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
    );
  }

  Widget _buildBody() {
    return BlocBuilder<RecipesBloc, RecipesState>(
      builder: (_, state) {
        if (state is RecipesLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is RecipesLoaded) {
          return ListView.builder(
              itemCount: state.model!.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text('index : $index'),
                );
              });
        } else if (state is RecipesError){
          return Text(state.exception!.error.toString());
        }
        else {
          return Text('uknown state');
        }
      },
    );
  }
}
