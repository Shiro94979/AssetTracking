import 'package:flutter/material.dart';
import 'package:projectapp/Screens/calendar/process/readytoget.dart';
import '../Screens/calendar/dropdownday.dart';
import '../Screens/calendar/oficedatalist.dart';



class Calender extends StatefulWidget {
  Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  final inputTextSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Image.asset('assets/images/staff1.png')],
                    ))
              ],
            ),
            Container(margin: EdgeInsets.only(left: 10), child: DropDownDay()),
            //======= =============

            // OfficeDataList(),
            Container(
              height: 110,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) =>
                      OfficeDataList()),
            ),
            ReadyToGet()
          ],
        ),
      ),
    );
  }
}
