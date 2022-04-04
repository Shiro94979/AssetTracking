import 'package:flutter/material.dart';
import 'package:projectapp/Screens/calendar/Scancomplete/complete_rating.dart';

import 'package:projectapp/Screens/calendar/process/custombutton.dart';
import 'package:projectapp/Screens/qrScan/qrpage.dart';

import 'package:projectapp/home_navigation.dart';

class ProcessPage2 extends StatefulWidget {
  @override
  _ProcessPage2State createState() => _ProcessPage2State();
}

class _ProcessPage2State extends State<ProcessPage2>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  int _tabIndex = 0;

  @override
  void initState() {
   _controller = new TabController(length: 4, vsync: this, initialIndex: 2);
    super.initState();
  }

  void toggleTab() {
    _tabIndex = _controller!.index + 1;
    _controller?.animateTo(_tabIndex);
  }

  void toggleBeforeTab() {
    _tabIndex = _controller!.index - 1;
    _controller?.animateTo(_tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Container(
                child: IgnorePointer(
                  // ignoring: true,
                  child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 10, right: 10),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    controller: _controller,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator:
                        CircleTabIndicator(color: Colors.green, radius: 4),
                    tabs: [
                      Tab(text: "Acknowledge"),
                      Tab(text: "Reach"),
                      Tab(text: "On process"),
                      Tab(text: "Success"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width * 0.87,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _controller,
                children: [
                  //********* Acknowledge stage *********
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 103, 224, 113),
                          Color.fromRGBO(245, 245, 245, 2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Confirmed the task',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 39, 133, 42)),
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 60,
                                      width: 60,
                                      child: Image.asset(
                                          'assets/images/person1.png')),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Isaac Alexander'),
                                      Row(
                                        children: [
                                          Text(
                                            'Request by ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Floor 3'),
                                          Text(
                                            '(Room 404)',
                                            style: TextStyle(fontSize: 9),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                          height: 20,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/staff1.png'),
                                              Text('Elliot Møller')
                                            ],
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Icon(Icons.arrow_drop_down_circle),
                              SizedBox(height: 20),
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
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                      width: 80,
                                      child: CustomButton(
                                        text: 'Confirmed',
                                        press: toggleTab,
                                        colors: Color.fromARGB(255, 14, 85, 16),
                                        colortext: Colors.white,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      width: 60,
                                      child: CustomButton(
                                        text: 'Busy',
                                        press: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeNavigation()));
                                        },
                                        colors: Colors.red,
                                        colortext: Colors.blue,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 100),
                            child: Image.asset('assets/images/ImageA.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                  //********** Reach stage **********
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 103, 224, 113),
                          Color.fromRGBO(245, 245, 245, 2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Reach to take \npatient?',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 39, 133, 42)),
                              ),
                              Text(
                                'Scan a patient barcode \nbefore start taking the \npatient.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 180,
                                    child: CustomButton(
                                      text: 'Scan',
                                      colors: Colors.green,
                                      colortext: Colors.red,
                                      press: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> QrPage()));},
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Image.asset('assets/images/working2.png')
                        ],
                      ),
                    ),
                  ),
                  //********** On process stage **********
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 103, 224, 113),
                          Color.fromRGBO(245, 245, 245, 2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Taking a patient safely \nTo destination.',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Color.fromARGB(255, 39, 133, 42)),
                              ),
                              Text(
                                  'Scan a patient barcode \nbefore start taking the \npatient.',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: CustomButton(
                                      text: 'Succes',
                                      colors: Color.fromARGB(255, 11, 107, 14),
                                      colortext:
                                          Color.fromARGB(255, 3, 70, 124),
                                      press: toggleTab,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //********** Success stage **********
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 103, 224, 113),
                          Color.fromRGBO(245, 245, 245, 2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Finish the task?',
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Color.fromARGB(255, 39, 133, 42)),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Waite for the officer to \nconfirmed your task.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>CompleteRating())),
                            icon:Icon(Icons.check_circle),
                            color: Color.fromARGB(255, 30, 95, 32),
                            iconSize: 60,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color? color;
  double? radius;
  CircleTabIndicator({this.color, this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color? color;
  double? radius;
  _CirclePainter({this.color, this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color!;
    _paint.isAntiAlias = true;
    final Offset circleOffset =
        Offset(configuration.size!.width / 2, configuration.size!.height - 40);
    canvas.drawCircle(offset + circleOffset, radius!, _paint);
  }
}
