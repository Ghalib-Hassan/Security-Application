import 'package:flutter/material.dart';

class FavIcon extends StatefulWidget {
  const FavIcon({
    super.key,
  });

  @override
  State<FavIcon> createState() => _FavIconState();
}

bool selected = false;

class _FavIconState extends State<FavIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Icon(
        Icons.bookmark,
        size: 25,
        color: selected ? Colors.amber : Colors.grey,
      ),
    );
  }
}
