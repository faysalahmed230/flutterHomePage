class ProductCategoryModel {
  final int id;
  final String categoryName;
  final String categoryImage;
  final double categoryPrice;

  ProductCategoryModel({
    this.id,
    this.categoryName,
    this.categoryImage,
    this.categoryPrice,
  });
}

List<ProductCategoryModel> productCategoryModel = [
  ProductCategoryModel(
    id: 1,
    categoryName: "Bags & Luggage",
    categoryImage: "assets/images/bags.jpg",
    categoryPrice: 500,
  ),
  ProductCategoryModel(
    id: 2,
    categoryName: "Beauty & BodyCare",
    categoryImage: "assets/images/bodyCare.jpg",
    categoryPrice: 500,
  ),
  ProductCategoryModel(
    id: 3,
    categoryName: "Books & Stationery",
    categoryImage: "assets/images/books.jpg",
    categoryPrice: 500,
  ),
  ProductCategoryModel(
    id: 4,
    categoryName: "Laptop",
    categoryImage: "assets/images/mac.jpg",
    categoryPrice: 500,
  ),
  ProductCategoryModel(
    id: 5,
    categoryName: "Desktop",
    categoryImage: "assets/images/desktop.jpg",
    categoryPrice: 500,
  ),
  ProductCategoryModel(
    id: 6,
    categoryName: "Watch",
    categoryImage: "assets/images/watch.jpg",
    categoryPrice: 500,
  ),
];
