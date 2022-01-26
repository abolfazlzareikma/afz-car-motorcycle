import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';
import 'package:get/get.dart';

import 'MaterialColor.dart';



class MaterialData extends StatefulWidget {
  const MaterialData({Key key}) : super(key: key);

  @override
  _MaterialDataState createState() => _MaterialDataState();
}

class _MaterialDataState extends State<MaterialData> with SingleTickerProviderStateMixin {

  List listMotor = [
    {
      'title': 'BMW',
      'countryName': 'Germany',
      'cover': 'images/motor1.jpg',
      'detail': 'C 400 GT',
      'price': '9,890',
      'country': 'images/germany.ico',
      'icon': Icons.favorite,

    },
    {
      'title': 'HAYABUSA',
      'countryName': 'Japan',
      'cover': 'images/motor9.jpg',
      'detail': 'Suzuki Sportbike',
      'price': '18,599',
      'country': 'images/japan.ico',
      'icon': Icons.favorite_border,

    },
    {
      'title': 'RUCKUS',
      'countryName': 'Japan',
      'cover': 'images/motor8.jpg',
      'detail': 'Honda Scooter',
      'price': '2,799',
      'country': 'images/japan.ico',
      'icon': Icons.favorite,

    },
    {
      'title': 'HAYABUSA',
      'countryName': 'Japan',
      'cover': 'images/motor4.jpg',
      'detail': 'Motorsports',
      'price': '15,328',
      'country': 'images/japan.ico',
      'icon': Icons.favorite_border,

    },
    {
      'title': 'BMW',
      'countryName': 'Germany',
      'cover': 'images/motor5.jpg',
      'detail': 'S 1000 RR',
      'price': '22,070',
      'country': 'images/germany.ico',
      'icon': Icons.favorite,

    },
    {
      'title': 'HAYABUSA',
      'countryName': 'Japan',
      'cover': 'images/motor2.jpg',
      'detail': 'Suzuki Sportbike',
      'price': '83,782',
      'country': 'images/japan.ico',
      'icon': Icons.favorite,

    },
  ];



  List listCar = [
    {
      'title': 'LEXUS',
      'countryName': 'Japan',
      'cover': 'images/1.webp',
      'detail': '2015 RC 350',
      'price': '29,998',
      'country': 'images/japan.ico',
      'icon': Icons.favorite_border,

    },
    {
      'title': 'FORD',
      'countryName': 'Usa',
      'cover': 'images/2.png',
      'detail': 'Platinum',
      'price': '79,998',
      'country': 'images/usa.ico',
      'icon': Icons.favorite,

    },
    {
      'title': 'TOYOTA',
      'countryName': 'Usa',
      'cover': 'images/3.png',
      'detail': '2020 Camry LE ',
      'price': '22,998',
      'country': 'images/usa.ico',
      'icon': Icons.favorite,

    },
    {
      'title': 'FORD',
      'countryName': 'Usa',
      'cover': 'images/4.png',
      'detail': '2014 Flex SEL',
      'price': '18,998',
      'country': 'images/usa.ico',
      'icon': Icons.favorite_border,

    },
    {
      'title': 'MC BENZ',
      'countryName': 'Germany',
      'cover': 'images/5.png',
      'detail': '2018 C300',
      'price': '30,998',
      'country': 'images/germany.ico',
      'icon': Icons.favorite,
    },
  ];




  String currentTitle = '';
  String currentCover = '';
  String currentCountry = '';
  String currentPrice = '';
  bool currentBorder = false;
  IconData currentIcon = Icons.favorite_border;
  Color currentColor = Colors.grey;
  IconData btnIcon = Icons.play_arrow;
  bool isPlaying = false;
  bool changeGrid = false;
  bool changeView = false;
  Color active = Colors.purple;
  Color inactive = Colors.white;
  TabController tabController;

  changeGridList() {
    if (changeGrid) {
      setState(() {
        changeGrid = false;
      });
    } else {
      setState(() {
        changeGrid = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 1 , length: 2 , vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: new Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                new Stack(
                  alignment: Alignment.topRight,
                  children: [
                    new Container(
                      height: 250,
                      padding: const EdgeInsets.only(
                          left: 22, right: 22, top: 15, bottom: 15),
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage(currentCover),
                          fit: BoxFit.cover,
                        ),
                        color: blackColor,
                      ),
                    ),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: new Container(
                            height: 32,
                            width: 32,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: currentCountry.isNotEmpty ? new Image
                                  .asset(currentCountry) : new Icon(Icons.flag),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: new Container(
                            height: 32,
                            width: 32,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: new Icon(currentIcon),

                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 38,
                    width: 108,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(color: blackColor, width: 1),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(child: new Icon(Icons.attach_money, size: 23,
                              color: blackColor)),
                          Center(
                              child: new Text(currentPrice.isNotEmpty
                                  ? currentPrice
                                  : '--------', style: TextStyle(color: blackColor, fontSize: 18))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new TabBar(
              onTap: (index) {
                setState(() {
                  changeGridList();
                });
              },
              controller: tabController,
              indicatorColor: Colors.grey[400],
              unselectedLabelColor: Colors.grey[400],
              labelColor: blackColor,
              tabs: [
                new Tab(
                  child: new Text('motorcycle'.toUpperCase(),
                      style: TextStyle(letterSpacing: 3)),
                ),
                new Tab(
                  child: new Text(
                      'car'.toUpperCase(), style: TextStyle(letterSpacing: 2)),
                ),

              ],
            ),
            new Expanded(
              child: new TabBarView(
                controller: tabController,
                children: [
                  changeGrid ? expandedCardGrid(listMotor) : expandedCard(
                      listMotor),
                  changeGrid ? expandedCardGrid(listCar) : expandedCard(
                      listCar),

                ],
              ),
            ),
          ],
        )
      ),
    );
  }


expandedCard(list) {
  return new Expanded(
    child: new Container(
      margin: const EdgeInsets.only(top: 23),
      padding: const EdgeInsets.all(12),
      child: new ListView.builder(
        itemCount: list.length,
        itemBuilder: (context , index) {
          return new InkWell(
            onLongPress: () {
              showModalBottomSheet(
                elevation: 150,
                backgroundColor: Colors.white,
                isDismissible: true,
                builder: (BuildContext context) {
                  return new Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              new GestureZoomBox(
                                child: new Container(
                                  height: 250,
                                  decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          list[index]['cover']),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                maxScale: 48,
                              ),
                              new AnimationLimiter(
                                  child: new AnimationConfiguration
                                      .staggeredList(
                                      duration: Duration(milliseconds: 800),
                                      position: 0,
                                      child: new ScaleAnimation(
                                          child: new FadeInAnimation(
                                            child: Container(
                                              padding: EdgeInsets.all(15),
                                              child: Container(
                                                height: 48,
                                                decoration: new BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius
                                                      .circular(
                                                      8),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 0),
                                                ),
                                                child: new IconButton(
                                                    icon: Icon(
                                                        Icons.arrow_downward),
                                                    onPressed: () {
                                                      Get.back();
                                                    }),
                                              ),
                                            ),)))),
                            ],
                          ),
                          new AnimationLimiter(
                              child: new AnimationConfiguration.staggeredList(
                                  duration: Duration(milliseconds: 800),
                                  position: 0,
                                  child: new ScaleAnimation(
                                      child: new FadeInAnimation(
                                        child: Container(
                                          padding: EdgeInsets.all(15),
                                          child: Container(
                                            height: 48,
                                            decoration: new BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius
                                                  .circular(
                                                  8),
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 0),
                                            ),
                                            child: new IconButton(
                                                icon: Icon(currentIcon),
                                                onPressed: () {
                                                  Get.back();
                                                }),
                                          ),
                                        ),)))),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              height: 83,
                              width: 150,
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    8),

                              ),

                              child: new AnimationLimiter(
                                  child: new AnimationConfiguration
                                      .staggeredGrid(
                                      duration: Duration(milliseconds: 800),
                                      position: 0,
                                      columnCount: 3,
                                      child: new SlideAnimation(
                                          child: new FadeInAnimation(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .center,
                                              children: [
                                                new Text(
                                                  list[index]['price'],
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: blackColor,
                                                    letterSpacing: 5,
                                                  ),
                                                  textDirection: TextDirection
                                                      .ltr,
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .center,
                                                  children: [
                                                    Container(
                                                        height: 20,
                                                        width: 20,
                                                        child: new Image.asset(
                                                            list[index]['country'])),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .all(8),
                                                      child: new Text(
                                                          list[index]['countryName'],
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                          ),
                                                          textDirection: TextDirection
                                                              .ltr),
                                                    ),
                                                  ],
                                                ),

                                              ],
                                            ),)))),
                            ),
                          ),
                          new AnimationLimiter(
                              child: new AnimationConfiguration.staggeredGrid(
                                  duration: Duration(milliseconds: 800),
                                  position: 0,
                                  columnCount: 3,
                                  child: new SlideAnimation(
                                      child: new FadeInAnimation(
                                        child: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Container(
                                            height: 83,
                                            width: 150,
                                            decoration: new BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius
                                                  .circular(
                                                  8),

                                            ),

                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .center,
                                              children: [
                                                new Text(
                                                  list[index]['title'],
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: blackColor,
                                                    letterSpacing: 5,
                                                  ),
                                                  textDirection: TextDirection
                                                      .ltr,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      8),
                                                  child: new Text(
                                                      list[index]['detail'],
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
                                                      textDirection: TextDirection
                                                          .ltr),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),)))),
                        ],
                      ),

                    ],
                  );
                },
                context: context,
              );
              setState(() {
                currentTitle = list[index]['title'];
                currentCover = list[index]['cover'];
                currentCountry = list[index]['country'];
                currentIcon = list[index]['icon'];
                currentPrice = list[index]['price'];
                currentColor = list[index]['color'];
              });
            },
            onTap: () {
              setState(() {
                currentTitle = list[index]['title'];
                currentCover = list[index]['cover'];
                currentCountry = list[index]['country'];
                currentIcon = list[index]['icon'];
                currentPrice = list[index]['price'];
                currentColor = list[index]['color'];
              });
            },
            splashColor: Colors.white,
            highlightColor: Colors.white,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          new Stack(
                            children: [
                              new AnimationLimiter(
                                child: new AnimationConfiguration.staggeredList(
                                    duration: Duration(milliseconds: 800),
                                    position: 0,
                                    child: new ScaleAnimation(
                                        child: new FadeInAnimation(child:
                                        new Container(
                                          height: 100,
                                          width: 100,
                                          decoration: new BoxDecoration(
                                            image: new DecorationImage(
                                              image: new AssetImage(
                                                  list[index]['cover']),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                                8),
                                          ),
                                        ),))),),
                            ],
                          ),
                          new Container(
                            height: 83,
                            width: 150,
                            color: Colors.white,
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new AnimationLimiter(
                                  child: new AnimationConfiguration.staggeredList(
                                    duration: Duration(milliseconds: 500),
                                    position: 3,
                                    child: new SlideAnimation(
                                      child: new FadeInAnimation(
                                        child: new Text(
                                          list[index]['title'],
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 5,
                                          ),
                                          textDirection: TextDirection.ltr,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: new AnimationLimiter(
                                      child: new AnimationConfiguration
                                          .staggeredList(
                                          duration: Duration(milliseconds: 800),
                                          position: 3,
                                          child: new SlideAnimation(
                                              child: new FadeInAnimation(
                                                  child: new Text(
                                                      list[index]['detail'],
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
                                                      textDirection: TextDirection
                                                          .ltr))))),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                ),
                ),
                new Divider(thickness: 1),
              ],
            )
          );
        }
      )
    ),
  );
}
expandedCardGrid(list) {
    return new Expanded(
      child: new Container(
        padding: const EdgeInsets.only(top: 23),
        margin: const EdgeInsets.all(8),
        child: new GridView.builder(
          itemCount: list.length,
          itemBuilder: (context , index) =>
          new InkWell(
            splashColor: Colors.white,
            highlightColor: Colors.white,
            onLongPress: () {
              showModalBottomSheet(
                elevation: 150,
                backgroundColor: Colors.white,
                isDismissible: true,
                builder: (BuildContext context) {
                  return new Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              new GestureZoomBox(
                                child: new Container(
                                  height: 250,
                                  decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          list[index]['cover']),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                maxScale: 48,
                              ),
                              new AnimationLimiter(
                                  child: new AnimationConfiguration
                                      .staggeredList(
                                      duration: Duration(milliseconds: 800),
                                      position: 0,
                                      child: new ScaleAnimation(
                                          child: new FadeInAnimation(
                                            child: Container(
                                              padding: EdgeInsets.all(15),
                                              child: Container(
                                                height: 48,
                                                decoration: new BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius
                                                      .circular(
                                                      8),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 0),
                                                ),
                                                child: new IconButton(
                                                    icon: Icon(
                                                        Icons.arrow_downward),
                                                    onPressed: () {
                                                      Get.back();
                                                    }),
                                              ),
                                            ),)))),
                            ],
                          ),
                          new AnimationLimiter(
                              child: new AnimationConfiguration.staggeredList(
                                  duration: Duration(milliseconds: 800),
                                  position: 0,
                                  child: new ScaleAnimation(
                                      child: new FadeInAnimation(
                                        child: Container(
                                          padding: EdgeInsets.all(15),
                                          child: Container(
                                            height: 48,
                                            decoration: new BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius
                                                  .circular(
                                                  8),
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 0),
                                            ),
                                            child: new IconButton(
                                                icon: Icon(currentIcon),
                                                onPressed: () {
                                                  Get.back();
                                                }),
                                          ),
                                        ),)))),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              height: 83,
                              width: 150,
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    8),

                              ),

                              child: new AnimationLimiter(
                                  child: new AnimationConfiguration
                                      .staggeredGrid(
                                      duration: Duration(milliseconds: 800),
                                      position: 0,
                                      columnCount: 3,
                                      child: new SlideAnimation(
                                          child: new FadeInAnimation(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .center,
                                              children: [
                                                new Text(
                                                  list[index]['price'],
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: blackColor,
                                                    letterSpacing: 5,
                                                  ),
                                                  textDirection: TextDirection
                                                      .ltr,
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .center,
                                                  children: [
                                                    Container(
                                                        height: 20,
                                                        width: 20,
                                                        child: new Image.asset(
                                                            list[index]['country'])),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .all(8),
                                                      child: new Text(
                                                          list[index]['countryName'],
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                          ),
                                                          textDirection: TextDirection
                                                              .ltr),
                                                    ),
                                                  ],
                                                ),

                                              ],
                                            ),)))),
                            ),
                          ),
                          new AnimationLimiter(
                              child: new AnimationConfiguration.staggeredGrid(
                                  duration: Duration(milliseconds: 800),
                                  position: 0,
                                  columnCount: 3,
                                  child: new SlideAnimation(
                                      child: new FadeInAnimation(
                                        child: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Container(
                                            height: 83,
                                            width: 150,
                                            decoration: new BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius
                                                  .circular(
                                                  8),

                                            ),

                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .center,
                                              children: [
                                                new Text(
                                                  list[index]['title'],
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: blackColor,
                                                    letterSpacing: 5,
                                                  ),
                                                  textDirection: TextDirection
                                                      .ltr,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      8),
                                                  child: new Text(
                                                      list[index]['detail'],
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
                                                      textDirection: TextDirection
                                                          .ltr),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),)))),
                        ],
                      ),

                    ],
                  );
                },
                context: context,
              );
              setState(() {
                currentTitle = list[index]['title'];
                currentCover = list[index]['cover'];
                currentCountry = list[index]['country'];
                currentIcon = list[index]['icon'];
                currentPrice = list[index]['price'];
                currentColor = list[index]['color'];
              });
            },
            onTap: () {
              setState(() {
                currentTitle = list[index]['title'];
                currentCover = list[index]['cover'];
                currentCountry = list[index]['country'];
                currentIcon = list[index]['icon'];
                currentPrice = list[index]['price'];
                currentColor = list[index]['color'];
              });
            },
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            new AnimationLimiter(
                                child: new AnimationConfiguration.staggeredList(
                                    duration: Duration(milliseconds: 800),
                                    position: 0,
                                    child: new ScaleAnimation(
                                        child: new FadeInAnimation(
                                          child: new Container(
                                            height: 100,
                                            width: 100,
                                            decoration: new BoxDecoration(
                                              image: new DecorationImage(
                                                image: new AssetImage(
                                                    list[index]['cover']),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius
                                                  .circular(8),
                                            ),
                                          ),)))),

                          ],
                        ),
                        new SizedBox(height: 10),
                        Container(
                          height: 83,
                          width: 150,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              new AnimationLimiter(
                                  child: new AnimationConfiguration
                                      .staggeredList(
                                      duration: Duration(milliseconds: 500),
                                      position: 3,
                                      child: new SlideAnimation(
                                          child: new FadeInAnimation(
                                            child: new Text(
                                              list[index]['title'],
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5,
                                              ),
                                              textDirection: TextDirection.ltr,
                                            ),)))),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: new AnimationLimiter(
                                    child: new AnimationConfiguration
                                        .staggeredList(
                                        duration: Duration(milliseconds: 500),
                                        position: 3,
                                        child: new SlideAnimation(
                                            child: new FadeInAnimation(
                                              child: new Text(
                                                  list[index]['detail'],
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                  textDirection: TextDirection
                                                      .ltr),)))),
                              ),
                              new Divider(thickness: 1),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
        ),
      ),
    );
}
}
