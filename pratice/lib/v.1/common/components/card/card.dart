import 'package:flutter/material.dart';
import 'package:pratice/v.1/common/style/color/theme_color.dart';


// membuat class reusable widget
// Dalam arsitektur MVVM (Model-View-ViewModel), konsep reusable mengacu pada kemampuan untuk membuat komponen-komponen 
// UI atau logika bisnis yang dapat digunakan kembali di berbagai bagian dari aplikasi. Ini sangat penting untuk mengurangi
// duplikasi kode, meningkatkan konsistensi, dan mempermudah pemeliharaan aplikasi dalam jangka panjang.

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Function? goTo;

  const ProductCard(
      {super.key,
      required this.title,
      required this.image,
      required this.price,
      this.goTo});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: GestureDetector(
        onTap: () => goTo,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Image.network(
                image,
                width: double.infinity,
                fit: BoxFit.contain,
                height: 160,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall),
                    // const SizedBox(height: 10),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$${price.toString()}',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(width: 5),
                          Text(
                            '\$199',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shopping_bag,
                              color: ColorsApp.mainText,
                            ),
                    
                            // color: ColorsApp.mainText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
