import 'package:flutter/material.dart';
import 'package:foodie/view/bottom_nav.dart';
// import 'package:foodie/view/bottom_nav.dart';


class MyProfilePayment extends StatefulWidget {
  const MyProfilePayment({super.key});

  @override
  State<MyProfilePayment> createState() => _MyProfilePaymentState();
}

class _MyProfilePaymentState extends State<MyProfilePayment> {
  String selectedOption = 'None selected';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My profile',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            SizedBox(height: 10),
            // UserInfo
            ListTile(
              tileColor: Colors.white,
              leading: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image(image: AssetImage('assets/toyface.jpg'))),
              title: Text(
                'Marvis Ighedosa',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'dosamarvis@gmail.com\nNo 15 uti street off ovie palace road effurun delta state',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: Icon(Icons.edit_outlined),
            ),
            SizedBox(height: 50),
            //Payment Method
            Text(
              'Payment Method',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                height: 260,
                width: 315,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      RadioMenuButton(
                        value: 'Card',
                        groupValue: selectedOption,
                        onChanged: (selectedValue) {
                          debugPrint(selectedValue.toString());
                          setState(() => selectedOption = selectedValue!);
                        },
                        style: ButtonStyle(),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  color:
                                      const Color.fromARGB(255, 248, 138, 11),
                                  child: Icon(
                                    Icons.credit_card_outlined,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(width: 15),
                            const Text('Card'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                      RadioMenuButton(
                        value: 'backaccount',
                        groupValue: selectedOption,
                        onChanged: (selectedValue) {
                          debugPrint(selectedValue.toString());
                          setState(() => selectedOption = selectedValue!);
                        },
                        style: ButtonStyle(),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  color: const Color(0xFFEB4796),
                                  child: Image(
                                      image:
                                          AssetImage('assets/banklogo.png'))),
                            ),
                            SizedBox(width: 15),
                            const Text('Bank Account'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                      RadioMenuButton(
                        value: 'paypal',
                        groupValue: selectedOption,
                        onChanged: (selectedValue) {
                          setState(() => selectedOption = selectedValue!);
                        },
                        style: ButtonStyle(),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  color: Color(0xFF0038FF),
                                  child: Icon(
                                    Icons.paypal,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(width: 15),
                            const Text('Paypal'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
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
                      'Update',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Quicksand'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
