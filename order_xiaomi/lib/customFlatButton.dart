import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final bool messageButton, hasNotification;
  final String label;
  final Color color;
  CustomFlatButton(
      {this.messageButton,
      this.label,
      this.color,
      this.hasNotification = true});
  @override
  Widget build(BuildContext context) {
    return messageButton
        ? Stack(children: [
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(width: 2.0, color: color)),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 2,
              child: Container(
                height: hasNotification ? 8.0 : 0.0,
                width: hasNotification ? 8.0 : 0.0,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              ),
            )
          ])
        : FlatButton(
            padding: EdgeInsets.all(0.0),
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 27.0, vertical: 12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  )),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
  }
}
