import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: HexColor('E98C23'),
        ),
        onPressed: () {
          setState(() {
            isFavorite = isFavorite;
          });
        });
  }
}