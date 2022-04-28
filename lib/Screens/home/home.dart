import 'package:flutter/material.dart';
import 'package:projectapp/Screens/home/Register/scanbarcode_page.dart';
import 'package:projectapp/Screens/home/checkin/scanrfi_checkin.dart';
import 'package:projectapp/Screens/home/checkout/checkout_scanrfid.dart';
import 'package:projectapp/Screens/home/datalist.dart';
import 'package:projectapp/Screens/home/timelist.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TabController? controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 370,
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScanbarcodePage()))
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0))),
                  padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 12)),
                ),
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 246, 223, 55),
                            Color.fromARGB(255, 233, 218, 57)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/qrscan.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.fitWidth,
                        ),
                        Text(
                          ('Register'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80.0,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScanRfidCheckin()))
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0))),
                        padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 12)),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 103, 224, 113),
                                  Color.fromARGB(255, 47, 153, 88)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/checkin.png',
                                height: 80,
                                width: 70,
                                fit: BoxFit.fitWidth,
                              ),
                              Text(
                                ('Check-in'),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Container(
                    height: 80.0,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckoutRfid()))
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0))),
                        padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 12)),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 217, 106, 46),
                                  Color.fromARGB(255, 215, 183, 136)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/checkout.png',
                                height: 80,
                                width: 50,
                                fit: BoxFit.fitWidth,
                              ),
                              Text(
                                ('Check-out'),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Activity',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 110,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) => Datalist()),
            ),
            Timelist()
          ],
        ),
      ),
    );
  }
}
