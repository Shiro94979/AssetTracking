import 'package:flutter/material.dart';

class Datalist extends StatefulWidget {
  Datalist({Key? key}) : super(key: key);

  @override
  State<Datalist> createState() => _DatalistState();
}

class _DatalistState extends State<Datalist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 250,
      child: Card(
        color: Colors.green,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: ListTile(
            title: Container(
                child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Stock Room 01",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Total Asset',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '43',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                '/',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                '45',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Total Check-out',
                            style: TextStyle(fontSize: 10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/images/scan.png'),
                    )
                  ],
                )
              ],
            )),
          ),
        ),
        elevation: 8,
        shadowColor: Colors.green,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
