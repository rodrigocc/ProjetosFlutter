import 'package:combomakerteste/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class StaticList extends StatefulWidget {
  @override
  _StaticListState createState() => _StaticListState();


}

class _StaticListState extends State<StaticList> {












  int _current = 0;
  var imgList = [
    "https://www.wallpapermaiden.com/wallpaper/22750/download/1366x768/flat-landscape-minimalism-trees-sunset-river-artwork.jpeg",
    "https://wallpaperhd.wiki/wp-content/uploads/wall-paper-1366-x-768-370157.jpg",
    "https://s1.1zoom.me/b5050/764/292819-blackangel_1366x768.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(""),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(

              height: 300.0,
              initialPage: 0,
              onPageChanged: (index) {
                setState(() {
                  _current = index;

                });

              },

              items: imgList.map((imgUrl){
                return Builder(
                  builder: (BuildContext context){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blueGrey,


                      ),
                      child: Image.network(imgUrl,fit: BoxFit.fill,)


                    );
                  },
                );

            }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
