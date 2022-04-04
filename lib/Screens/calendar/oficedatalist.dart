import 'package:flutter/material.dart';

class OfficeDataList extends StatefulWidget {
  OfficeDataList({Key? key}) : super(key: key);

  @override
  State<OfficeDataList> createState() => _OfficeDataListState();
}

class _OfficeDataListState extends State<OfficeDataList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 230,
      child: Card(
        color: Colors.green,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 16, 116, 66),
                Color.fromARGB(255, 33, 216, 121),
                Color.fromARGB(255, 33, 216, 113),
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
                    Text("office No. 248/"),
                    Text('3 patients'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.schedule),
                    Text('8:30 AM - 02:00 PM'),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 125, 197, 191),
                    ),
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 125, 197, 191),
                    ),
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 125, 197, 191),
                    ),
                    Container(
                      width: 100,
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.check_circle,color: Color.fromARGB(255, 30, 95, 32),size: 30,),
                      ],
                    )),
                  ],
                ),
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
