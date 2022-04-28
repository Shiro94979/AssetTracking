import 'package:flutter/material.dart';

import 'package:projectapp/Screens/home/timeorder.dart';

class Timelist extends StatefulWidget {
  @override
  _TimelistState createState() => _TimelistState();
}

class _TimelistState extends State<Timelist>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  int _tabIndex = 0;

  @override
  void initState() {
    _controller = new TabController(length: 3, vsync: this, initialIndex: 1);
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
        Column(
          children: [
            Container(
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                controller: _controller,
                isScrollable: true,
                tabs: [
                  Tab(text: "Today"),
                  Tab(text: "Tomorrow"),
                  Tab(text: "Next Week"),
                ],
              ),
            ),
            Container(
              height: 350,
              // width: MediaQuery.of(context).size.width * 1,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _controller,
                children: [
                  //********* today *********
                  Container(
                    child: Column(
                      children: [
                        Timeorder(),
                        Timeorder(),
                      ],
                    ),
                  ),
                  //********** tomorrow **********
                  Container(
                    child: Column(
                      children: [
                        Timeorder(),
                        Timeorder(),
                      ],
                    ),
                  ),
                  //********** next week **********
                  Container(
                    child: Column(
                      children: [
                        Timeorder(),
                        Timeorder(),
                      ],
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
