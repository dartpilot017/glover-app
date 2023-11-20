import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryAndIcon extends StatelessWidget {
  const CategoryAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
              "Popular cartegories:",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
          ),
          Icon(
            Icons.arrow_circle_right_outlined,
            size: 30,
            color: Color(0xff586992),
          )
        ],
      ),
    );
  }
}
