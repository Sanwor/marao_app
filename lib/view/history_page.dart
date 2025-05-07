import 'package:flutter/material.dart';
import 'package:foodie/view/bottom_nav.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('History',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 180,
            ),
            Image(image: AssetImage('assets/history.png')),
            SizedBox(
              height: 20,
            ),
            Text(
              'No history yet',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hit the orange button down\nbelow to Create an order',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 190,
            ),
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
                      'Start Ordering',
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
    );
  }
}
