import 'package:flutter/material.dart';
import 'package:projectapp/Screens/calendar/calendar_navi.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:projectapp/Screens/qrScan/scanner.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:projectapp/home_navigation.dart';

class CompleteRating extends StatefulWidget {
  CompleteRating({Key? key}) : super(key: key);

  @override
  State<CompleteRating> createState() => _CompleteRatingState();
}

class _CompleteRatingState extends State<CompleteRating> {
  String? _result;
  @override
  Widget build(BuildContext context) {
  void _onLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.all(40),
                child: SpinKitPouringHourGlassRefined(
                  color: Colors.black,
                  size: 100.0,
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Text(
                      'Waiting for a task',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Get ready to ....',style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
    new Future.delayed(new Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CalendarNavi()));
    });
  }






    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 400,
              child: Image.asset(
                'assets/images/working2-1.png',
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: Row(
                        children: [
                          Container(
                              width: 60,
                              child: Image.asset('assets/images/person1.png')),
                          Container(
                              height: 50,
                              child: Row(
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Isaac Alexander',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Request by ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11),
                                            ),
                                            Text('Floor 3'),
                                          ],
                                        ),
                                      ]),
                                ],
                              )),
                          SizedBox(width: 10),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              Icons.arrow_drop_down_circle,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Destination ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  ),
                                  Text('Floor 1'),
                                ],
                              ),
                              Container(
                                height: 20,
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/staff2.png'),
                                    Text('Olivia Pedersen'),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 250,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0)),
                                padding: EdgeInsets.all(0.0),
                                textStyle: TextStyle(fontSize: 18),
                              ),
                              onPressed: _onLoading,
                              child: Text('Ready')),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: 50,
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0)),
                                padding: EdgeInsets.all(0.0),
                                textStyle: TextStyle(fontSize: 18),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeNavigation()));
                              },
                              child: Text('Not yet')),
                        ),
                      ],
                    )
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
