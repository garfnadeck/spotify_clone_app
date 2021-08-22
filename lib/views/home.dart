import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.topLeft, children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .5,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.1),
              Colors.black.withOpacity(0),
            ],
          ),
        ),
      ),
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recently Player",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.history),
                        SizedBox(width: 16),
                        Icon(Icons.settings),
                      ],
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    AlbumItemCard(
                      label: "Best Mode",
                      image: AssetImage(
                        "assets/album1.png",
                      ),
                    ),
                    SizedBox(width: 16),
                    AlbumItemCard(
                      label: "Motivation Mix",
                      image: AssetImage(
                        "assets/album2.png",
                      ),
                    ),
                    SizedBox(width: 16),
                    AlbumItemCard(
                      label: "Top 50 - Global",
                      image: AssetImage(
                        "assets/album2.jpg",
                      ),
                    ),
                    SizedBox(width: 16),
                    AlbumItemCard(
                      label: "Top Best Japan",
                      image: AssetImage(
                        "assets/album14.jpg",
                      ),
                    ),
                    SizedBox(width: 16),
                    AlbumItemCard(
                      label: "Top Best K-POP",
                      image: AssetImage(
                        "assets/album5.jpg",
                      ),
                    ),
                    SizedBox(width: 16),
                    AlbumItemCard(
                      label: "Top K-Pop 2020 ",
                      image: AssetImage(
                        "assets/album15.jpg",
                      ),
                    ),
                    SizedBox(width: 16),
                    AlbumItemCard(
                      label: "Best of J-ROCK",
                      image: AssetImage(
                        "assets/album7.jpg",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 32),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good evening",
                        style: Theme.of(context).textTheme.headline6),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        RowAlbumCard(
                          image: AssetImage("assets/top50Global.jpg"),
                          label: ("Top 50 - Global"),
                        ),
                        SizedBox(width: 16),
                        RowAlbumCard(
                          image: AssetImage("assets/top50Brazil.jpg"),
                          label: ("Top 50 -Brasil"),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        RowAlbumCard(
                          image: AssetImage("assets/top50Spain.jpg"),
                          label: ("Top 50 - Spain"),
                        ),
                        SizedBox(width: 16),
                        RowAlbumCard(
                          image: AssetImage("assets/top50Japan.jpg"),
                          label: ("Top 50 -Japão"),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        RowAlbumCard(
                          image: AssetImage("assets/top50Mexico.jpg"),
                          label: ("Top 50 - Mexico"),
                        ),
                        SizedBox(width: 16),
                        RowAlbumCard(
                          image: AssetImage("assets/top50Norway.jpg"),
                          label: ("Top 50 - Norway"),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]));
  }
}

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

class AlbumItemCard extends StatelessWidget {
  final ImageProvider image;
  final String label;

  const AlbumItemCard({Key? key, required this.image, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          width: 120,
          height: 120,
        ),
        SizedBox(height: 10),
        Text(label),
      ],
    );
  }
}
