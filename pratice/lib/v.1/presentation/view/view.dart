import 'package:flutter/material.dart';
import 'package:pratice/v.1/common/components/card/card.dart';
import 'package:pratice/v.1/data/model/product_model.dart';
import 'package:pratice/v.1/domain/entities/product_entities.dart';
import 'package:pratice/v.1/presentation/bloc/export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewApp extends StatefulWidget {
  const ViewApp({super.key});

  @override
  State<ViewApp> createState() => _ViewAppState();
}

class _ViewAppState extends State<ViewApp> {
  double w (BuildContext context) => MediaQuery.sizeOf(context).width;
  double h (BuildContext context) => MediaQuery.sizeOf(context).height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody() ,
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
    );
  }

  Widget _buildBody() {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (_, state) {
        if (state is ProductLoading || state is ProductInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProductLoaded) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              childAspectRatio: 10 / 16
            ),
            itemCount: state.model!.length,
            itemBuilder: (_, index) {
              final ProductEntity productModel = state.model![index];
              return ProductCard(
                title: productModel.title!,
                image: productModel.image!,
                price: productModel.price!,
              );
            },
          );
        } else if (state is ProductError) {
          return Text(state.exception!.error.toString());
        } else {
          return Text('uknown state');
        }
      },
    );
  }
}
