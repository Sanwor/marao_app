import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
          title: Text(
            'Cart',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            //product 1
            Slidable(
              endActionPane: ActionPane(motion: StretchMotion(), children: [
                CustomSlidableAction(
                  onPressed: (context) => onDismissed(),
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 45,
                      width: 45,
                      color: Colors.red,
                      child: Icon(Icons.favorite_border_outlined,
                          color: Colors.white,
                          ),
                    ),
                  ),
                ),
                SlidableAction(
                  backgroundColor: Colors.red,
                  icon: Icons.delete_outline,
                  onPressed: (context) => onDismissed(),
                ),
              ]),
              child: ListTile(
                minTileHeight: 100,
                tileColor: Colors.white,
                leading: Image(image: AssetImage('assets/calabressa.png')),
                title: Text('X Calabressa'),
                subtitle: Text('\$ 13,99'),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 25,
                    width: 60,
                    color: Colors.orange,
                    child: Row(
                      children: [
                        Icon(Icons.remove),
                        Text('1'),
                        Icon(Icons.add),
                      ],
                    ),
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
                SlidableAction(
                  backgroundColor: Colors.blue,
                  icon: Icons.favorite_border_outlined,
                  onPressed: (context) => onDismissed(),
                ),
                SlidableAction(
                  backgroundColor: Colors.red,
                  icon: Icons.delete_outline,
                  onPressed: (context) => onDismissed(),
                ),
              ]),
              child: ListTile(
                minTileHeight: 100,
                tileColor: Colors.white,
                leading: Image(image: AssetImage('assets/calabressa.png')),
                title: Text('X Calabressa'),
                subtitle: Text('\$ 13,99'),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 25,
                    width: 60,
                    color: Colors.orange,
                    child: Row(
                      children: [
                        Icon(Icons.remove),
                        Text('1'),
                        Icon(Icons.add),
                      ],
                    ),
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
                SlidableAction(
                  backgroundColor: Colors.blue,
                  icon: Icons.favorite_border_outlined,
                  onPressed: (context) => onDismissed(),
                ),
                SlidableAction(
                  backgroundColor: Colors.red,
                  icon: Icons.delete_outline,
                  onPressed: (context) => onDismissed(),
                ),
              ]),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minTileHeight: 100,
                tileColor: Colors.white,
                leading: Image(image: AssetImage('assets/calabressa.png')),
                title: Text('X Calabressa'),
                subtitle: Text('\$ 13,99'),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 25,
                    width: 60,
                    color: Colors.orange,
                    child: Row(
                      children: [
                        Icon(Icons.remove),
                        Text('1'),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 220,
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
                      'Checkout',
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
          ]),
        )));
  }
}
