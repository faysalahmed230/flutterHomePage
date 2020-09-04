
import 'package:ecotesting/models/productCategoryModel.dart';
import 'package:flutter/material.dart';

import '../confiq.dart';

class ProductCategoryCard extends StatelessWidget {
  final ProductCategoryModel product;

  ProductCategoryCard({this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
              height: 100,
              width: 120,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ColorMaterial.lightColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                product.categoryImage,
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20 / 4),
          child: Text(
            product.categoryName,
            style:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "\$${product.categoryPrice}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
