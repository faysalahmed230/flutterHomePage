class Products {
  final int id;
  final String productDesc;
  final String productImage;
  final double disCountProductPrice;
  final double productPrice;
  final int percentageDiscount;

  Products({
    this.id,
    this.productDesc,
    this.productImage,
    this.disCountProductPrice,
    this.productPrice,
    this.percentageDiscount,
  });
}

List<Products> products = [
  Products(
    id: 1,
    productDesc: "ShwapnoChura Colorful cloth",
    productImage: "assets/images/cloth.jpg",
    disCountProductPrice: 135,
    productPrice: 300,
    percentageDiscount: -49,
  ),
  Products(
    id: 1,
    productDesc: "ShwapnoChura Colorful cloth",
    productImage: "assets/images/cloth.jpg",
    disCountProductPrice: 135,
    productPrice: 300,
    percentageDiscount: -49,
  ),
  Products(
    id: 1,
    productDesc: "ShwapnoChura Colorful cloth",
    productImage: "assets/images/cloth.jpg",
    disCountProductPrice: 135,
    productPrice: 300,
    percentageDiscount: -49,
  ),
  Products(
    id: 1,
    productDesc: "ShwapnoChura Colorful cloth",
    productImage: "assets/images/cloth.jpg",
    disCountProductPrice: 135,
    productPrice: 300,
    percentageDiscount: -49,
  ),
];
