import 'package:flutter/material.dart';
import 'package:projectapp/home_navigation.dart';

class ConfirmCheckout extends StatefulWidget {
  ConfirmCheckout({Key? key}) : super(key: key);

  @override
  State<ConfirmCheckout> createState() => _ConfirmCheckoutState();
}

class _ConfirmCheckoutState extends State<ConfirmCheckout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset('assets/icons/Logo_two.png',
            fit: BoxFit.contain, height: 42),
        toolbarHeight: 58,
        actions: [
          IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 70),
            Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 215, 153, 52),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                            // height: 150,
                            // width: 150,
                            child: Image.asset('assets/images/Box.png')),
                        Column(
                          children: [
                            Text(
                              'Printer Box 01',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            SizedBox(height: 10),
                            Text('Printer Brother-X410 with 4 ink '),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Time Stamp',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('2 october 2020, 14:20:47'),
                            ],
                          ),
                          SizedBox(width: 50),
                          Column(
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('Stock Room 01'),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(height: 70),
            // ********button*******
            Container(
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeNavigation()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 216, 180, 79),
                          Color.fromARGB(255, 137, 104, 38)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 320.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Check Out',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
