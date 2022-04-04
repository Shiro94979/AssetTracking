import 'package:flutter/material.dart';

class DropDownDay extends StatefulWidget {
  DropDownDay({Key? key}) : super(key: key);

  @override
  State<DropDownDay> createState() => _DropDownDayState();
}

class _DropDownDayState extends State<DropDownDay> {
  String? _selectedValue;
  List<DropdownMenuItem<String>> items = [
    'Today',
    'Mon',
    'Tue',
    'Weก',
    'Thu',
    'Fri',
    'Sat',
    'sun'
  ].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(
        value,
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }).toList();

  String? positions;
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [ 
            Container(
              height: 40,
              width: 100,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(),
                  color: Colors.green ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down_circle,
                      color: Colors.grey.withOpacity(0.7)),
                  items: items,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedValue = value;
                    });
                    print('----- value ------');
                    print(_selectedValue);
                  },
                  hint: Text(
                    "Please choose a langauage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  value: _selectedValue,
                ),
              ),
            ),        // Use DIY widget from class (very clean code)    
          ],
        );
  }
}
