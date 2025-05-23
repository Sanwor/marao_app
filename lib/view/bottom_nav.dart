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
          selectedItemColor: Color(0xffD73800),
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/home.svg',
                  colorFilter: ColorFilter.mode(
                      index == 0 ? Color(0xffD73800) : Colors.grey,
                      BlendMode.srcIn)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/heart.svg',
                colorFilter: ColorFilter.mode(
                    index == 1 ? Color(0xffD73800) : Colors.grey,
                    BlendMode.srcIn),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/user.svg',
                colorFilter: ColorFilter.mode(
                    index == 2 ? Color(0xffD73800) : Colors.grey,
                    BlendMode.srcIn),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/history2.svg',
                colorFilter: ColorFilter.mode(
                    index == 3 ? Color(0xffD73800) : Colors.black,
                    BlendMode.srcIn),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
