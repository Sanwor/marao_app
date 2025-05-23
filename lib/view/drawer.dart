//poppins wala package halna baki cha

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/view/bottom_nav.dart';
import 'package:foodie/view/login_page.dart';
import 'package:foodie/view/my_offers.dart';
import 'package:foodie/view/orders_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildheader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildheader(BuildContext context) => Container();
  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.only(left: 24, top: 100),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            runSpacing: 10,
            children: [
              ListTile(
                leading: SvgPicture.asset(
                  'assets/profile.svg',
                  color: Colors.black,
                ),
                title: Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BottomNavPage(
                            initialIndex: 2,
                          )));
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.black,
                  thickness: .3,
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/buy.svg',
                  color: Colors.black,
                ),
                title: Text('orders'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => OrdersPage()));
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.black,
                  thickness: .3,
                ),
              ),
              ListTile(
                leading: Icon(Icons.local_offer_outlined),
                title: Text('offer and promo'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              MyOffers()) //yesma Offer Page Rakhna Baki cha
                      );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.black,
                  thickness: .3,
                ),
              ),
              ListTile(
                leading: Icon(Icons.sticky_note_2_outlined),
                title: Text('Privacy policy'),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.black,
                  thickness: .3,
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/security.svg',
                  color: Colors.black,
                ),
                title: Text('Security'),
                onTap: () {},
              ),
              SizedBox(
                height: 200,
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                label: Text(
                  'Sign out',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffD73800)),
                ),
                icon: Icon(
                  Icons.arrow_forward_outlined,
                  color: Color(0xffD73800),
                ),
              )
            ],
          ),
        ),
      );
}
