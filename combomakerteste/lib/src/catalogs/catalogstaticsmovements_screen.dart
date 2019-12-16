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
  "https://cdn.gmb.io/wp-content/uploads/2016/12/alkavadlo-14.jpg"
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXg3ZAYjf1HCrwozMA43IL_NubWTlw-vAh8iOATXuc8SNNHobg&s"
  "https://live.staticflickr.com/915/41304453960_2f0c237fb9_b.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
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
                      child: Image.network(imgUrl,fit: BoxFit.cover,)


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
