import 'package:flutter/material.dart';
import 'package:projectapp/Screens/FindingRfid/list_finding_rfid.dart';

class FindingRfid extends StatefulWidget {
  FindingRfid({Key? key}) : super(key: key);

  @override
  State<FindingRfid> createState() => _FindingRfidState();
}

class _FindingRfidState extends State<FindingRfid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'RFID tag finding',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )),
              Text(
                'Filter by',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              Row(
                children: [
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 10.0,
                              top: 8.5,
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              widthFactor: 1.0,
                              alignment: Alignment.center,
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: 30.0, right: 10.0),
                                child: Text(
                                  "ID",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 10.0,
                              top: 8.5,
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              widthFactor: 1.0,
                              alignment: Alignment.center,
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: 30.0, right: 10.0),
                                child: Text(
                                  "Name",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 10.0,
                              top: 8.5,
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              widthFactor: 1.0,
                              alignment: Alignment.center,
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: 30.0, right: 10.0),
                                child: Text(
                                  "Status",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 10.0,
                              top: 8.5,
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              widthFactor: 1.0,
                              alignment: Alignment.center,
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: 30.0, right: 10.0),
                                child: Text(
                                  "Location",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //_________________________________
              Container(
                height: 25,
                width: 220,
                margin: EdgeInsets.only(left: 10),
                child: TextField(
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.green[200],
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search),
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 5.0, top: 5.0),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0)))),
                ),
              ),

              //_________________________________
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) =>
                        ListFindingRfid()),
              ),
            ],
          )),
    ));
  }
}
