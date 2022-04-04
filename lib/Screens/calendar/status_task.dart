import 'package:flutter/material.dart';

class StatusTask extends StatelessWidget {
  const StatusTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[200],
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Row(
          children: [
            Container(
                width: 60, child: Image.asset('assets/images/person1.png')),
            Container(
                height: 50,
                child: Row(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Isaac Alexander',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Text(
                                'Request by ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 11),
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
                    Text('Destination ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
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
    );
  }
}
