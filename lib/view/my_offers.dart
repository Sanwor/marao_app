import 'package:flutter/material.dart';

class MyOffers extends StatefulWidget {
  const MyOffers({super.key});

  @override
  State<MyOffers> createState() => _MyOffersState();
}

class _MyOffersState extends State<MyOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 24,
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              'My Offers',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 300,
            ),
            Text(
              'ohh snap!  No offers yet',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Bella dose’t have any offers\nyet please check again.',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      )),
    );
  }
}
