import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                            onTap: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                            child: SvgPicture.asset(
                              'assets/menubar.svg',
                              height: 14.76,
                              width: 22,
                            )),
                      ),
                      // SizedBox(
                      //   width: 278,
                      // ),
                      Expanded(
                        flex: 11,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => OrdersPage(),
                              ));
                            },
                            child: SvgPicture.asset(
                              'assets/shopping-cart.svg',
                              height: 24,
                              width: 24,
                              alignment: AlignmentDirectional(1, 0),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    'Delicious\nfood for you',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                //searchbar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchPage()));
                    },
                    child: Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/search.svg'),
                              SizedBox(
                                width: 10,
                              ),
                              Opacity(
                                opacity: .5,
                                child: Text(
                                  'Search',
                                  style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                TabBar(
                  physics: BouncingScrollPhysics(),
                  dividerHeight: 0,
                  indicatorColor: Color(0xffB52E2B),
                  labelStyle: TextStyle(
                      color: Color(0xffB52E2B),
                      fontFamily: 'Quicksand',
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                  unselectedLabelStyle: TextStyle(
                      color: Color(0xff9A9A9D),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
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
                  height: 50,
                ),

                //see more
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 300,
                        child: Text(
                          'see more',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFProRounded',
                              color: Color(0xffB52E2B)),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: SizedBox(
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
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      ViewPage(data: itemList[index]),
                                ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                height: 300,
                                width: 217,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
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
                                          fontSize: 24,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Center(
                                      child: Text(
                                        itemList[index]["description"]
                                            .toString(),
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              bottom: 10,
                                              right: 5),
                                          child: Column(
                                            children: [
                                              Text('\$',
                                                  style: TextStyle(
                                                      color: Color(0xffB52E2B),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: 'Quicksand'))
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              itemList[index]["price"]
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color(0xffB52E2B),
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Quicksand'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
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
                              Axis.horizontal, //Makes it horizontal
                          itemCount: itemList2.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      ViewPage(data: itemList2[index]),
                                ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                height: 100,
                                width: 200,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
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
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          itemList2[index]["description"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              bottom: 10,
                                              right: 5),
                                          child: Column(
                                            children: [
                                              Text('\$',
                                                  style: TextStyle(
                                                      color: Color(0xffB52E2B),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: 'Quicksand'))
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              itemList2[index]["price"]
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color(0xffB52E2B),
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Quicksand'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
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
                              Axis.horizontal, //Makes it horizontal
                          itemCount: itemList3.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      ViewPage(data: itemList3[index]),
                                ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                height: 100,
                                width: 200,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        itemList3[index]["image"].toString(),
                                        height: 100,
                                      ),
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
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          itemList3[index]["description"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              bottom: 10,
                                              right: 5),
                                          child: Column(
                                            children: [
                                              Text('\$',
                                                  style: TextStyle(
                                                      color: Color(0xffB52E2B),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: 'Quicksand'))
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              itemList3[index]["price"]
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color(0xffB52E2B),
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Quicksand'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
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
                              Axis.horizontal, //Makes it horizontal
                          itemCount: itemList4.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      ViewPage(data: itemList4[index]),
                                ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                height: 100,
                                width: 200,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
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
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          itemList4[index]["description"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              bottom: 10,
                                              right: 5),
                                          child: Column(
                                            children: [
                                              Text('\$',
                                                  style: TextStyle(
                                                      color: Color(0xffB52E2B),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: 'Quicksand'))
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              itemList4[index]["price"]
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color(0xffB52E2B),
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Quicksand'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
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
                              Axis.horizontal, //Makes it horizontal
                          itemCount: itemList5.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      ViewPage(data: itemList5[index]),
                                ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                height: 100,
                                width: 200,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        itemList5[index]["image"].toString(),
                                        height: 120,
                                      ),
                                    ),
                                    Text(
                                      itemList5[index]["title"].toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          itemList5[index]["description"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              bottom: 10,
                                              right: 5),
                                          child: Column(
                                            children: [
                                              Text('\$',
                                                  style: TextStyle(
                                                      color: Color(0xffB52E2B),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: 'Quicksand'))
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              itemList5[index]["price"]
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color(0xffB52E2B),
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Quicksand'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
