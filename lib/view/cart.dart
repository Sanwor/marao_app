import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/view/bottom_nav.dart';
import 'package:foodie/view/checkout_delivery.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    void onDismissed() {}

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => BottomNavPage(
                    initialIndex: 0,
                  ),
                ));
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              )),
          title: Text(
            'Cart',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'SFPro'),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 49, vertical: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/swipe.svg',
                  height: 20,
                  width: 20,
                ),
                Text(
                  'swipe on an item to delete',
                  style: TextStyle(
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                ),
              ],
            ),
            SizedBox(height: 20),
            //product 1
            Slidable(
              endActionPane: ActionPane(motion: StretchMotion(), children: [
                CustomSlidableAction(
                  onPressed: (context) => onDismissed(),
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 45,
                      width: 45,
                      color: Color(0xffDF2C2C),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                CustomSlidableAction(
                  onPressed: (context) => onDismissed(),
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                        height: 45,
                        width: 45,
                        color: Color(0xffDF2C2C),
                        child: Icon(
                          Icons.delete_outline,
                          color: Colors.white,
                        )),
                  ),
                ),
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 102,
                  width: 316,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/calabressa.png'),
                            height: 56,
                            width: 112,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'X Calabressa',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '\$ 13,99',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Color(0xffB52E2B)),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10, 50, 10, 20),
                              height: 20,
                              width: 52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffB52E2B),
                              ),
                              child: Text(
                                '-  1  +',
                                style: TextStyle(
                                    fontFamily: 'SFProRounded',
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            //product 2
            Slidable(
              endActionPane: ActionPane(motion: StretchMotion(), children: [
                CustomSlidableAction(
                  onPressed: (context) => onDismissed(),
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 45,
                        width: 45,
                        color: Color(0xffDF2C2C),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomSlidableAction(
                  onPressed: (context) => onDismissed(),
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                        height: 45,
                        width: 45,
                        color: Color(0xffDF2C2C),
                        child: Icon(
                          Icons.delete_outline,
                          color: Colors.white,
                        )
                        // SvgPicture.asset(
                        //   'asstes/delete.svg',
                        //   height: 14,
                        //   width: 16,
                        // ),
                        ),
                  ),
                ),
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 102,
                  width: 315,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/calabressa.png'),
                            height: 56,
                            width: 112,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'X Calabressa',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '\$ 13,99',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Color(0xffB52E2B)),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10, 50, 10, 20),
                              height: 20,
                              width: 52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffB52E2B),
                              ),
                              child: Text(
                                '-  1  +',
                                style: TextStyle(
                                    fontFamily: 'SFProRounded',
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            // product 3
            Slidable(
              endActionPane: ActionPane(motion: StretchMotion(), children: [
                CustomSlidableAction(
                  onPressed: (context) => onDismissed(),
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 45,
                      width: 45,
                      color: Color(0xffDF2C2C),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                CustomSlidableAction(
                  onPressed: (context) => onDismissed(),
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                        height: 45,
                        width: 45,
                        color: Color(0xffDF2C2C),
                        child: Icon(
                          Icons.delete_outline,
                          color: Colors.white,
                        )),
                  ),
                ),
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 102,
                  width: 315,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/calabressa.png'),
                            height: 56,
                            width: 112,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'X Calabressa',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '\$ 13,99',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Color(0xffB52E2B)),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10, 50, 10, 20),
                              height: 20,
                              width: 52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffB52E2B),
                              ),
                              child: Text(
                                '-  1  +',
                                style: TextStyle(
                                    fontFamily: 'SFProRounded',
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),

            //button
            SizedBox(
              // width: 314,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CheckoutDelivery(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 163, 20, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 8),
                    Text(
                      'Complete order',
                      style: TextStyle(
                          color: Color(0xffF6F6F9),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SFPro'),
                    ),
                  ],
                ),
              ),
            )
          ]),
        )));
  }
}
