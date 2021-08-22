import 'package:flutter/material.dart';

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white10, borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 8),
            Text(label),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
