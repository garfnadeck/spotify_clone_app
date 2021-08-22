import 'package:flutter/material.dart';
import 'package:spotify_clone_app/widgets/album_card.dart';
import 'package:spotify_clone_app/widgets/song_card.dart';

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
        height: MediaQuery.of(context).size.height * .6,
        decoration: BoxDecoration(color: Color(0xFF1C7A74)),
      ),
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0),
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(1),
                Colors.black.withOpacity(1),
              ],
            ),
          ),
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
                      AlbumCard(
                        label: "Best Mode",
                        image: AssetImage(
                          "assets/album1.png",
                        ),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Motivation Mix",
                        image: AssetImage(
                          "assets/album2.png",
                        ),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Top 50 - Global",
                        image: AssetImage(
                          "assets/album2.jpg",
                        ),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Top Best Japan",
                        image: AssetImage(
                          "assets/album14.jpg",
                        ),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Top Best K-POP",
                        image: AssetImage(
                          "assets/album5.jpg",
                        ),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Top K-Pop 2020 ",
                        image: AssetImage(
                          "assets/album15.jpg",
                        ),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
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
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Based on your recent listening",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "JP",
                            image: AssetImage(
                              "assets/album2.png",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "J-Pop",
                            image: AssetImage(
                              "assets/album4.jpg",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Miracle",
                            image: AssetImage(
                              "assets/album2.jpg",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top Best 50 Japan",
                            image: AssetImage(
                              "assets/album14.jpg",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top Best K-POP",
                            image: AssetImage(
                              "assets/album15.jpg",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "AiMyon ",
                            image: AssetImage(
                              "assets/album13.jpg",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Best of J-ROCK",
                            image: AssetImage(
                              "assets/album7.jpg",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
                SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Recommended radio",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "Best Mode",
                            image: AssetImage(
                              "assets/album1.png",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Motivation Mix",
                            image: AssetImage(
                              "assets/album2.png",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top 50 - Global",
                            image: AssetImage(
                              "assets/album2.jpg",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top Best Japan",
                            image: AssetImage(
                              "assets/album14.jpg",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top Best K-POP",
                            image: AssetImage(
                              "assets/album5.jpg",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top K-Pop 2020 ",
                            image: AssetImage(
                              "assets/album15.jpg",
                            ),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Best of J-ROCK",
                            image: AssetImage(
                              "assets/album7.jpg",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ]));
  }
}
