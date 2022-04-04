import 'package:flutter/material.dart';
import 'package:projectapp/Screens/calendar/calendar_navi.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ReadyToGet extends StatefulWidget {
  ReadyToGet({Key? key}) : super(key: key);

  @override
  State<ReadyToGet> createState() => _ReadyToGetState();
}

class _ReadyToGetState extends State<ReadyToGet> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(30),
          height: 160,
          width: 160,
          child: Image.asset('assets/images/working.png'),
        ),
        SizedBox(
            child: Stack(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Text(
                    'Ready to get a task',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Scan a patient barcode before start \n taking the patient.',style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: ElevatedButton(
                            onPressed: _onLoading,
                            child: Text('Ready'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              padding: EdgeInsets.all(0.0),
                              textStyle: TextStyle(fontSize: 18,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ],
    );
  }
}
