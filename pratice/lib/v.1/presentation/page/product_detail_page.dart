import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pratice/v.1/data/model/product_model.dart';
import 'package:pratice/v.1/domain/entities/product_entities.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductEntity ?  productEntity;

  const ProductDetailScreen({Key? key, required this.productEntity})
      : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  widget.productEntity!.image!,
                  fit: BoxFit.cover,
                  height: 300, 
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.productEntity!.title!,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        widget.productEntity!.description!,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                     
                    },
                    child: Text('Order Now'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                 
                    },
                    child: Text('Chat'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}