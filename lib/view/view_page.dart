//PRODUCT VIEW PAGE
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/view/bottom_nav.dart';
// import 'package:foodie/view/home_page.dart';

class ViewPage extends StatefulWidget {
  final dynamic data;

  const ViewPage({super.key, required this.data});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  dynamic details;

  @override
  void initState() {
    details = widget.data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 239,
                      ),
                      SvgPicture.asset(
                        'assets/heart.svg',
                        color: Colors.black,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Image(
                    image: AssetImage(details["image"]),
                    height: 201,
                    width: 402,
                  ),
                  Text(
                    details["title"].toString(),
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, left: 0, bottom: 10, right: 5),
                        child: Column(
                          children: [
                            Text('\$',
                                style: TextStyle(
                                    color: Color(0xffB52E2B),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Quicksand'))
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            details["price"].toString(),
                            style: TextStyle(
                                color: Color(0xffB52E2B),
                                fontSize: 38,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery info',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Opacity(
                        opacity: .5,
                        child: Text(
                          'Delivered between monday and friday from 2pm to 11pm in Everett, Malden, Medford, Chelsea, Revere, East Boston, Melrose and Saugus.',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Return policy',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Opacity(
                        opacity: .5,
                        child: Text(
                          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: 314,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BottomNavPage(
                            initialIndex: 0,
                          ),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffB52E2B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 8),
                          Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Quicksand'),
                          ),
                        ],
                      ),
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
