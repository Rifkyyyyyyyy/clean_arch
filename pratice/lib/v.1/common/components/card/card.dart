import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pratice/v.1/common/style/color/theme_color.dart';

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
      child: InkWell(
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
                height: 180,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
