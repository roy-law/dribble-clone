import 'package:flutter/material.dart';

class OrderChoiceChip extends StatefulWidget {
  final String label;
  final bool selected;
  OrderChoiceChip({this.label, this.selected});
  @override
  _OrderChoiceChipState createState() => _OrderChoiceChipState();
}

class _OrderChoiceChipState extends State<OrderChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        border: !widget.selected
            ? Border.all(
                width: 2.0,
                color: Colors.grey,
              )
            : null,
        borderRadius: BorderRadius.circular(20.0),
        gradient: widget.selected
            ? LinearGradient(
                colors: [Colors.blue, Colors.green],
              )
            : null,
      ),
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Center(
        child: Text(
          widget.label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: !widget.selected ? Colors.grey : Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
