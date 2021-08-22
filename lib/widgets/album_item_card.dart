import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final ImageProvider image;
  final String text;

  const SongCard({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Column(
        children: [
          Image(
            image: image,
            width: 140,
            height: 140,
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: Theme.of(context).textTheme.caption,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
