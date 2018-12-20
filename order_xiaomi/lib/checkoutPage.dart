import 'package:flutter/material.dart';
import 'package:order_xiaomi/customFlatButton.dart';
import 'package:order_xiaomi/productCard.dart';
import 'package:order_xiaomi/section.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 10.0,
              margin: EdgeInsets.all(0.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "icons/xiaomi.png",
                          height: 20.0,
                          width: 20.0,
                        ),
                        SizedBox(width: 10.0),
                        Text("Xiaomi"),
                      ],
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ProductCard(
              productImageUrl:
                  "https://image2.geekbuying.com/ggo_pic/2018-10-25/Xiaomi-Mi-Mix-3-6-39-Inch-6GB-128GB-Smartphone-Black-757111-.jpg",
              productName: "Xiaomi Mi Mix 3",
              productPrice: 160,
              productColor: "Slate Black",
              productQuantity: 1,
              productStatus: "Packing",
            ),
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                    child: Text(
                  "View Product",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                )),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Divider(),
            Section(
              title: "Delivery Status",
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CheckDot(
                        color: Colors.blue,
                        selected: true,
                      ),
                      GradientLine(
                          selected: true, colors: [Colors.blue, Colors.green]),
                      CheckDot(
                        color: Colors.green,
                        selected: true,
                      ),
                      GradientLine(),
                      CheckDot(),
                      GradientLine(),
                      CheckDot(),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SpaceBetweenTextRow(
                    firstLabel: "Parcel packed for sending",
                    secondLabel: "10 Dec 2018",
                  ),
                ],
              ),
            ),
            Divider(),
            Section(
              title: "Payment Information",
              child: Column(children: <Widget>[
                SpaceBetweenTextRow(
                  firstLabel: "Merchandise Subtotal",
                  secondLabel: "USD 160",
                ),
                SpaceBetweenTextRow(
                  firstLabel: "Shipping: Standard Economy",
                  secondLabel: "USD 10",
                ),
                SpaceBetweenTextRow(
                  firstLabel: "Order Total",
                  secondLabel: "USD 170",
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.white,
          padding:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomFlatButton(
                messageButton: true,
                label: "Messages (2)",
                color: Colors.blue,
              ),
              CustomFlatButton(
                messageButton: true,
                label: "Cancel Order",
                color: Colors.red,
                hasNotification: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckDot extends StatelessWidget {
  final Color color;
  final bool selected;
  CheckDot({this.color = Colors.white, this.selected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: selected ? null : Border.all(width: 2.0, color: Colors.grey),
        color: selected ? color : null,
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(2.0),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: selected ? 12.0 : 8.0,
      ),
    );
  }
}

class GradientLine extends StatelessWidget {
  final List<Color> colors;
  final bool selected;
  GradientLine({this.colors, this.selected = false});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 2.0,
        decoration: BoxDecoration(
            color: !selected ? Colors.grey : null,
            gradient: selected
                ? LinearGradient(colors: [Colors.blue, Colors.green])
                : null),
      ),
    );
  }
}

class SpaceBetweenTextRow extends StatelessWidget {
  final String firstLabel, secondLabel;
  SpaceBetweenTextRow({this.firstLabel, this.secondLabel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(firstLabel),
          Text(secondLabel),
        ],
      ),
    );
  }
}
