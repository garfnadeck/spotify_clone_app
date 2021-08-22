import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final onTap;
  final double size;

  const AlbumCard(
      {Key? key,
      required this.image,
      required this.label,
      required this.onTap,
      this.size = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: image,
            width: size,
            height: size,
          ),
          SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}
