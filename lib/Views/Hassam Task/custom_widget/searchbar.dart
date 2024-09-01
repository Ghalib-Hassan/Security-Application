import 'package:flutter/material.dart';

class Mysearch extends StatefulWidget {
  const Mysearch({super.key, required this.height, required this.width});
  final double height;
  final double width; // Corrected from 'widget' to 'width'

  @override
  State<Mysearch> createState() => _MysearchState();
}

class _MysearchState extends State<Mysearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height, 
      width: widget.width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(49, 0, 0, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search_rounded),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.black38),
        ),
      ),
    );
  }
}
