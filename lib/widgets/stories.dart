import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _Stories();
}

class _Stories extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 120,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 120,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 120,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 120,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 120,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
        ],
      ),
    );
  }
}
