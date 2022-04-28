// import 'package:flutter/material.dart';
// import 'package:projectapp/Screens/calendar/process/custombutton.dart';
// import 'package:projectapp/Screens/qrScan/scanner.dart';

// class QrPage extends StatefulWidget {
//   QrPage({Key? key}) : super(key: key);

//   @override
//   State<QrPage> createState() => _QrPageState();
// }

// class _QrPageState extends State<QrPage> {
//   String? _result;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: 500,
//               height: 400,
//               child: Image.asset(
//                 'assets/images/working2-1.png',
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(40),
//                         topRight: Radius.circular(40))),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 20),
//                     Text(
//                       'Scan a patient barcode before start \ntaking the patient.',
//                       style: TextStyle(color: Colors.white),
//                       textAlign: TextAlign.center,
//                     ),
//                     SizedBox(height: 20),
//                     Image.asset('assets/images/qrscan.png'),
//                     SizedBox(height: 30),
//                     Container(
//                       height: 50,
//                       width: 300,
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.white,
//                             onPrimary: Colors.green,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(80.0)),
//                             padding: EdgeInsets.all(0.0),
//                             textStyle: TextStyle(fontSize: 18),
//                           ),
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Scanner()));
//                           },
//                           child: Text('I Got It')),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
