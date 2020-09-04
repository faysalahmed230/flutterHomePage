import 'package:ecotesting/models/productModel.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Products product;
  ItemCard({this.product});
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            product.productImage,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Chip(
                backgroundColor: Colors.green,
                label: Text(
                  "SALE",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Chip(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(),
                label: Text(
                  "${product.percentageDiscount}%",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Text(
            product.productDesc,
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\$${product.disCountProductPrice}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "\$${product.productPrice}",
            style: TextStyle(
                decoration: TextDecoration.lineThrough,
                decorationThickness: 2,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
