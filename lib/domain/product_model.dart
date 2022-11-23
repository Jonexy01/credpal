class ProductModel {
  ProductModel({
    this.productDisplayUrl,
    this.productOptionUrl,
    this.title,
    this.price,
    this.oldPrice,
  });

  final String? productDisplayUrl;
  final String? productOptionUrl;
  final String? title, price, oldPrice;
}
