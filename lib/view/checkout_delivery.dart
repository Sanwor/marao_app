import 'package:flutter/material.dart';
import 'package:foodie/view/checkout_payment.dart';

class CheckoutDelivery extends StatefulWidget {
  const CheckoutDelivery({super.key});

  @override
  State<CheckoutDelivery> createState() => _CheckoutDeliveryState();
}

List<String> options = ['Door delivery', 'Pickup'];

class _CheckoutDeliveryState extends State<CheckoutDelivery> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Address details',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                  width: 115,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'change',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.deepOrangeAccent),
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Marvis Kparobo',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Divider(thickness: .5),
                      Text(
                        'Km 5 refinery road oppsite republic road, effurun, delta state',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Divider(thickness: .5),
                      Text(
                        '+234 9011039271',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Delivery method.',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    ListTile(
                        title: const Text('Door delivery'),
                        leading: Radio(
                          value: options[0],
                          groupValue: currentOption,
                          onChanged: (value) {
                            setState(() {
                              currentOption = value.toString();
                            });
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(thickness: .5),
                    ),
                    ListTile(
                        title: const Text('Pick up'),
                        leading: Radio(
                          value: options[1],
                          groupValue: currentOption,
                          onChanged: (value) {
                            setState(() {
                              currentOption = value.toString();
                            });
                          },
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            //button
            SizedBox(
              // width: 314,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CheckoutPayment(),
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
                      'Proceed to payment',
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
      )),
    );
  }
}
