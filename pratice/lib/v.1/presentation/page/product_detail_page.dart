import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pratice/v.1/domain/entities/product_entities.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductEntity productEntity;
  const ProductDetailScreen({super.key, required this.productEntity});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
