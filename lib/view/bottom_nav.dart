import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/view/cart.dart';
import 'package:foodie/view/history_page.dart';
import 'package:foodie/view/home_page.dart';
import 'package:foodie/view/my_profile.dart';
// import 'package:foodie/view/view_page.dart';

class BottomNavPage extends StatefulWidget {
  final int initialIndex;

  const BottomNavPage({super.key, required this.initialIndex});

  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  late int index;

  final List<Widget> pages = [
    HomePage(),
    CartPage(),
    MyProfile(),
    HistoryPage(),
  ];

  @override
  void initState() {
    super.initState();

    index = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        debugPrint(result.toString());
      },
      child: Scaffold(
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          currentIndex: index,
          onTap: (int newIndex) {
            setState(() {
              index = newIndex;
            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/home.svg',
                  colorFilter: ColorFilter.mode(
                      index == 0 ? Colors.red : Colors.grey, BlendMode.srcIn)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/heart.svg',
                colorFilter: ColorFilter.mode(
                    index == 1 ? Colors.red : Colors.grey, BlendMode.srcIn),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
