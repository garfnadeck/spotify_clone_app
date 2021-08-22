import 'package:flutter/material.dart';
import 'package:spotify_clone_app/widgets/album_card.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({Key? key}) : super(key: key);

  @override
  _AlbumViewState createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerInitialHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;

  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize - scrollController.offset * .5;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerInitialHeight - scrollController.offset * .5;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imageSize / initialSize;
        if (scrollController.offset > 240) {
          showTopBar = true;
        } else {
          showTopBar = false;
        }
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            height: containerHeight,
            color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: imageOpacity.clamp(0, 1.0),
                  child: Container(
                    width: imageSize,
                    height: imageSize,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          offset: Offset(0, 20),
                          blurRadius: 32,
                          spreadRadius: 16)
                    ]),
                    child: Image(
                      image: AssetImage("assets/album2.jpg"),
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Column(
                        children: [
                          SizedBox(height: initialSize + 32),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                                  " Nulla augue arcu, eleifend quis congue eu, tincidunt eu nisl.",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage("assets/logoSpotify.png"),
                                      width: 32,
                                      height: 32,
                                    ),
                                    SizedBox(width: 8),
                                    Text("Spotify")
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "1,888,133 likes 5h 3m",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.favorite),
                                        SizedBox(width: 16),
                                        Icon(Icons.more_horiz),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu erat efficitur quam"
                            "fangilla. Vestibulum viverra molestie diam quis efficitur. Maecenas "),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                AlbumCard(
                                    image: AssetImage("assets/album1.png"),
                                    label: "First Solo",
                                    onTap: () {}),
                                SizedBox(
                                  width: 16,
                                ),
                                AlbumCard(
                                    image: AssetImage("assets/album2.jpg"),
                                    label: "Miracle",
                                    onTap: () {}),
                                SizedBox(
                                  width: 16,
                                ),
                                AlbumCard(
                                    image: AssetImage("assets/album4.jpg"),
                                    label: "Get Turnt",
                                    onTap: () {}),
                                SizedBox(
                                  width: 16,
                                ),
                                AlbumCard(
                                    image: AssetImage("assets/album5.jpg"),
                                    label: "Swipe sides",
                                    onTap: () {}),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: showTopBar
                    ? Color(0xffc61855).withOpacity(1)
                    : Color(0xffc61855).withOpacity(0),
                child: SafeArea(
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: showTopBar ? 1 : 0,
                          duration: Duration(microseconds: 500),
                          child: Text(
                            "Lorem Ipsum",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 80 -
                              containerHeight.clamp(120.0, double.infinity),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  width: 64,
                                  height: 64,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff14d860),
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 38,
                                  ),
                                ),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.shuffle,
                                    color: Colors.black,
                                    size: 14,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
