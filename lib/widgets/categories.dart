import 'package:flutter/material.dart';

import '../confiq.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Categories",
    "Brands",
    "Shops",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _buildCategories(index),
      ),
    );
  }

  Widget _buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: selectedIndex == index
                    ? ColorMaterial.lightBlack
                    : ColorMaterial.lightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20 / 4),
              height: 2,
              width: 65,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
