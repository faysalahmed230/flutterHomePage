import 'package:flutter/cupertino.dart';

class FunctionModel {
  final int id;
  final String name;
  final String image;

  FunctionModel({
    @required this.id,
    @required this.name,
    @required this.image,
  });
}

List<FunctionModel> functionality = [
  FunctionModel(
    id: 1,
    name: "Newsfeed",
    image: "assets/icons/newsfeed.png",
  ),
  FunctionModel(
    id: 2,
    name: "Gift Cards",
    image: "assets/icons/gitfcard.png",
  ),
  FunctionModel(
    id: 3,
    name: "Campaigns",
    image: "assets/icons/camp.jpg",
  ),
  FunctionModel(
    id: 4,
    name: "Orders",
    image: "assets/icons/orders.jpg",
  ),
];
