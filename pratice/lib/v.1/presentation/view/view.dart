import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pratice/v.1/common/components/card/card.dart';
import 'package:pratice/v.1/common/style/color/theme_color.dart';
import 'package:pratice/v.1/constant/endpoint/endpoint_app.dart';
import 'package:pratice/v.1/domain/entities/product_entities.dart';
import 'package:pratice/v.1/presentation/bloc/export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewApp extends StatefulWidget {
  const ViewApp({Key? key}) : super(key: key);

  @override
  State<ViewApp> createState() => _ViewAppState();
}

class _ViewAppState extends State<ViewApp> {
  double w(BuildContext context) => MediaQuery.sizeOf(context).width;
  // double h(BuildContext context) => MediaQuery.size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [_buildHeadline(), const SizedBox(height: 10), _buildSearch()],
              ),
            ),
            _buildBody(),
          ],
        ),
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

  Widget _buildHeadline() {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Discover', style: Theme.of(context).textTheme.titleLarge),
          Text(
            "You'r Best Product",
            style: Theme.of(context).textTheme.titleSmall,
          )
        ],
      ),
    );
  }

  Widget _buildSearch() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 55,
        margin: const EdgeInsets.only(bottom: 10, top: 5),
        width: w(context),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Warna latar belakang
                  borderRadius: BorderRadius.circular(8.0), // Radius sudut
                ),
                child: TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: "Cari...",
                    hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 16,
                        ),
                    border: InputBorder.none, // Menghapus border
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0), // Padding teks
                  ),
                ),
              ),
            ),
            SizedBox(width: 8.0),
            Container(
              width: 50.0,
              height: 55.0,
              decoration: BoxDecoration(
                color: ColorsApp.primary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                LucideIcons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
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
                return GestureDetector(
                  onTap: () {
                    context.push(pathEndpoint(
                        endpoints: AppEndpoints.productPage,
                        params: productModel.title) , extra: productModel);
                  },
                  child: ProductCard(
                    title: productModel.title!,
                    image: productModel.image!,
                    price: productModel.price!,
                  ),
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
