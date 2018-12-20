import 'package:flutter/material.dart';
import 'package:order_xiaomi/customFlatButton.dart';
import 'package:order_xiaomi/productCard.dart';

class OrderCard extends StatelessWidget {
  final String orderId;
  OrderCard({this.orderId});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Order ID #$orderId",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: <Widget>[
              ProductCard(
                productImageUrl:
                    "https://image2.geekbuying.com/ggo_pic/2018-10-25/Xiaomi-Mi-Mix-3-6-39-Inch-6GB-128GB-Smartphone-Black-757111-.jpg",
                productName: "Xiaomi Mi Mix 3",
                productPrice: 160,
                productColor: "Slate Black",
                productQuantity: 1,
                productStatus: "Packing",
              ),
              ProductCard(
                productImageUrl:
                    "https://cdn.eglobalcentraluk.com/images/detailed/69/xiaomi-mi-8-6gb-128gb-dual-sim-black.jpg",
                productName: "Xiaomi A2 Lite",
                productPrice: 100,
                productColor: "Black",
                productQuantity: 1,
                productStatus: "Processing",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomFlatButton(
                    messageButton: true,
                    label: "Messages (2)",
                    color: Colors.blue,
                  ),
                  CustomFlatButton(
                    messageButton: false,
                    label: "Order Details",
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
