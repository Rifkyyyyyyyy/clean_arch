import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pratice/v.1/common/components/card/card.dart';
import 'package:pratice/v.1/domain/entities/product_entities.dart';
import 'package:pratice/v.1/presentation/bloc/export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewApp extends StatefulWidget {
  const ViewApp({Key? key}) : super(key: key);

  @override
  State<ViewApp> createState() => _ViewAppState();
}

class _ViewAppState extends State<ViewApp> {
  // double w(BuildContext context) => MediaQuery.size.width;
  // double h(BuildContext context) => MediaQuery.size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  _buildText(),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          _buildBody(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      leading:
          IconButton(onPressed: () {}, icon: const Icon(LucideIcons.alignLeft)),
    );
  }

  Widget _buildText() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Teks yang panjang untuk ditampilkan di atas daftar kartu dan dapat digulir bersama daftar kartu.',
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (_, state) {
        if (state is ProductLoading || state is ProductInitial) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is ProductLoaded) {
          return SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              childAspectRatio: 10.5 / 16,
            ),
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                final ProductEntity productModel = state.model![index];
                return ProductCard(
                  title: productModel.title!,
                  image: productModel.image!,
                  price: productModel.price!,
                );
              },
              childCount: state.model!.length,
            ),
          );
        } else if (state is ProductError) {
          return SliverToBoxAdapter(
            child: Text(state.exception!.error.toString()),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Text('Unknown state'),
          );
        }
      },
    );
  }
}
