import 'package:flutter/material.dart';
import 'package:foodie/app_config/constant.dart';
import 'package:foodie/view/drawer.dart';
import 'package:foodie/view/orders_page.dart';
import 'package:foodie/view/search.dart';
import 'package:foodie/view/view_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var searchedResultList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
      body: DefaultTabController(
        length: itemNames.length,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                          child: Icon(Icons.menu)),
                      SizedBox(
                        width: 279,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => OrdersPage(),
                            ));
                          },
                          icon: Icon(Icons.shopping_cart))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Delicious\nfood for you',
                    style: TextStyle(
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //searchbar
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchPage()));
                    },
                    child: Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            border: Border.all(
                              width: 1.0,
                              color: Colors.black,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Search',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  TabBar(
                    isScrollable: true,
                    tabs: [
                      ...List.generate(
                        itemNames.length,
                        (idx) {
                          return Tab(
                            text: itemNames[idx],
                          );
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 300,
                    child: TabBarView(children: [
                      // Burger
                      Center(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection:
                              Axis.horizontal, // 👈 Makes it horizontal
                          itemCount: itemList.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        ViewPage(data: itemList[index]),
                                  ));
                                },
                                child: Container(
                                  height: 100,
                                  width: 200,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  color: Colors.white,
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        itemList[index]["image"].toString(),
                                        height: 120,
                                      ),
                                      Text(
                                        itemList[index]["title"].toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Center(
                                        child: Text(
                                          itemList[index]["description"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Text(
                                        itemList[index]["price"].toString(),
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      // Drinks
                      Center(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection:
                              Axis.horizontal, // 👈 Makes it horizontal
                          itemCount: itemList2.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        ViewPage(data: itemList2[index]),
                                  ));
                                },
                                child: Container(
                                  height: 100,
                                  width: 200,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  color: Colors.white,
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        itemList2[index]["image"].toString(),
                                        height: 120,
                                      ),
                                      Text(
                                        itemList2[index]["title"].toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Center(
                                        child: Text(
                                          itemList2[index]["description"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Text(
                                        itemList2[index]["price"].toString(),
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      //Hot Dog
                      Center(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection:
                              Axis.horizontal, // 👈 Makes it horizontal
                          itemCount: itemList3.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        ViewPage(data: itemList3[index]),
                                  ));
                                },
                                child: Container(
                                  height: 100,
                                  width: 200,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  color: Colors.white,
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        itemList3[index]["image"].toString(),
                                        height: 100,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        itemList3[index]["title"].toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Center(
                                        child: Text(
                                          itemList3[index]["description"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Text(
                                        itemList3[index]["price"].toString(),
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      //pizza
                      Center(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection:
                              Axis.horizontal, // 👈 Makes it horizontal
                          itemCount: itemList4.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        ViewPage(data: itemList4[index]),
                                  ));
                                },
                                child: Container(
                                  height: 100,
                                  width: 200,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  color: Colors.white,
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        itemList4[index]["image"].toString(),
                                        height: 120,
                                      ),
                                      Text(
                                        itemList4[index]["title"].toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Center(
                                        child: Text(
                                          itemList4[index]["description"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Text(
                                        itemList4[index]["price"].toString(),
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      //momo
                      Center(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection:
                              Axis.horizontal, // 👈 Makes it horizontal
                          itemCount: itemList5.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        ViewPage(data: itemList5[index]),
                                  ));
                                },
                                child: Container(
                                  height: 100,
                                  width: 200,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  color: Colors.white,
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        itemList5[index]["image"].toString(),
                                        height: 120,
                                      ),
                                      Text(
                                        itemList5[index]["title"].toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Center(
                                        child: Text(
                                          itemList5[index]["description"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Text(
                                        itemList5[index]["price"].toString(),
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // Text(
                  //   'see more',
                  //   textAlign: TextAlign.center,
                  // ),
                  SizedBox(
                    height: 300,
                    // Set height since it's horizontal
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection:
                          Axis.horizontal, // 👈 Makes it horizontal
                      itemCount: searchedResultList.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ViewPage(data: index),
                              ));
                            },
                            child: Container(
                              height: 100,
                              width: 200,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              color: Colors.white,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Image.asset(
                                    searchedResultList[index]["image"]
                                        .toString(),
                                    height: 120,
                                  ),
                                  Text(
                                    searchedResultList[index]["title"]
                                        .toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Center(
                                    child: Text(
                                      searchedResultList[index]["description"]
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Text(
                                    searchedResultList[index]["price"]
                                        .toString(),
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
