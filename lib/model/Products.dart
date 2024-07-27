class Products {

  final String productName;
  final String productDesc;
  final String productImage;
  final String productVideo;
  final String productPrice;
  final String productSeller;
  final String productQty;

   Products({
     required this.productName,
     required this.productDesc,
     required this.productImage,
     required this.productVideo,
     required this.productPrice,
     required this.productSeller,
     required this.productQty,
   });

   factory Products.fromJson(Map<String, dynamic> json) {
     return Products(
         productName: json['productName'],
         productDesc: json['productDesc'],
         productImage: json['productImage'],
         productVideo: json['productVideo'],
         productPrice: json['productPrice'],
         productSeller: json['productSeller'],
         productQty: json['productQty'],
     );
   }

}