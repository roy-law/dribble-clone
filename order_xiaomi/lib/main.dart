import 'package:flutter/material.dart';
import 'package:order_xiaomi/checkoutPage.dart';
import 'package:order_xiaomi/orderCard.dart';
import 'orderChoiceChip.dart';

void main() => runApp(MaterialApp(
      title: "Xiaomi Order Page",
      theme: ThemeData(primaryColor: Colors.white),
      home: CheckoutPage(),
    ));

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.menu),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
          child: Stack(children: [
            ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "My Orders",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    height: 35,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        OrderChoiceChip(
                          label: "All",
                          selected: false,
                        ),
                        OrderChoiceChip(
                          label: "Paid",
                          selected: true,
                        ),
                        OrderChoiceChip(
                          label: "Shipped",
                          selected: false,
                        ),
                        OrderChoiceChip(
                          label: "Returned",
                          selected: false,
                        ),
                      ],
                    )),
                OrderCard(
                  orderId: "860368",
                ),
                OrderCard(
                  orderId: "980368",
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.white, Colors.white.withOpacity(0.1)],
                )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
