import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName, productColor, productStatus, productImageUrl;
  final int productPrice, productQuantity;
  ProductCard(
      {this.productImageUrl,
      this.productName,
      this.productPrice,
      this.productColor,
      this.productQuantity,
      this.productStatus});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20.0),
      elevation: 8.0,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Image.network(
                productImageUrl,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  productName,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "USD $productPrice",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  productColor,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "x $productQuantity",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(productStatus),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
