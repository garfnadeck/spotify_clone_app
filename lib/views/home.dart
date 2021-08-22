import 'package:flutter/material.dart';
import 'package:spotify_clone_app/widgets/album_card.dart';
import 'package:spotify_clone_app/widgets/album_item_card.dart';
import 'package:spotify_clone_app/widgets/song_card.dart';

import 'album_view.dart';

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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlbumView(),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Motivation Mix",
                        image: AssetImage(
                          "assets/album2.png",
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlbumView(),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Top 50 - Global",
                        image: AssetImage(
                          "assets/album2.jpg",
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlbumView(),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Top Best Japan",
                        image: AssetImage(
                          "assets/album14.jpg",
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlbumView(),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Top Best K-POP",
                        image: AssetImage(
                          "assets/album5.jpg",
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlbumView(),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Top K-Pop 2020 ",
                        image: AssetImage(
                          "assets/album15.jpg",
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlbumView(),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Best of J-ROCK",
                        image: AssetImage(
                          "assets/album7.jpg",
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlbumView(),
                            ),
                          );
                        },
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
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          SongCard(
                            image: AssetImage("assets/cover2ne1.jpg"),
                            text: "The best of 2NE1 hits 2021",
                          ),
                          SizedBox(width: 16),
                          SongCard(
                            image: AssetImage("assets/coverEXO.png"),
                            text: "Listen the best songs from EXO B-Group",
                          ),
                          SizedBox(width: 16),
                          SongCard(
                            image:
                                AssetImage("assets/coverGirlsGeneration.jpg"),
                            text: "Girls Generation from 2005 up to now",
                          ),
                          SizedBox(width: 16),
                          SongCard(
                            image: AssetImage("assets/coverBigBang.jpg"),
                            text: "Big Bang the greatest hits since 2001",
                          ),
                          SizedBox(width: 16),
                          SongCard(
                            image: AssetImage("assets/coverBlackPink.jpg"),
                            text: "Black Pink with all albums and singles",
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
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          SongCard(
                            image: AssetImage("assets/album6.jpg"),
                            text: "Radio K-pop",
                          ),
                          SizedBox(width: 16),
                          SongCard(
                            image: AssetImage("assets/album5.jpg"),
                            text: "Radio Girls Power",
                          ),
                          SizedBox(width: 16),
                          SongCard(
                            image: AssetImage("assets/album2.jpg"),
                            text: "Girls Generation from 2005 up to now",
                          ),
                          SizedBox(width: 16),
                          SongCard(
                            image: AssetImage("assets/album7.jpg"),
                            text: "Big Bang the greatest hits since 2001",
                          ),
                          SizedBox(width: 16),
                          SongCard(
                            image: AssetImage("assets/album9.jpg"),
                            text: "Black Pink with all albums and singles",
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
