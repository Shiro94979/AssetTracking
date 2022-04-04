// // import 'package:flutter/material.dart';
// // import 'ack.dart';

// // class ProcessPage extends StatefulWidget {
// //   @override
// //   _ProcessPageState createState() => _ProcessPageState();
// // }

// // class _ProcessPageState extends State<ProcessPage>
// //     with SingleTickerProviderStateMixin {
// //   TabController? _controller;
// //   int _tabIndex = 0;

// //   @override
// //   void initState() {
// //     _controller = TabController(length: 2, vsync: this);
// //     super.initState();
// //   }

// //   void toggleTab() {
// //     _tabIndex = _controller!.index + 1;
// //     _controller?.animateTo(_tabIndex);
// //   }

// //   void toggleBeforeTab() {
// //     _tabIndex = _controller!.index - 1;
// //     _controller?.animateTo(_tabIndex);
// //   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             RotatedBox(
//               quarterTurns: 1,
//               child: Container(
//                 child: IgnorePointer(
//                   ignoring: true,
//                   child: Align(
//                     // alignment: Alignment.centerLeft,
//                     child: TabBar(
//                       labelPadding: const EdgeInsets.only(left: 20, right: 20),
//                       labelColor: Colors.black,
//                       unselectedLabelColor: Colors.grey,
//                       controller: _controller,
//                       isScrollable: true,
//                       indicatorSize: TabBarIndicatorSize.label,
//                       indicator:
//                           CircleTabIndicator(color: Colors.amber, radius: 4),
//                       tabs: [
//                         Tab(text: "Tab One"),
//                         Tab(text: "Tab Two"),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Flexible(
//               child: Container(
//                 height: 300,
//                 width: double.maxFinite,
//                 child: TabBarView(
//                   physics: NeverScrollableScrollPhysics(),
//                   controller: _controller,
//                   children: [
//                     Column(
//                       children: [
//                         Text('confirmed the task'),
//                         Text('Isaac Alexander'),
//                         Text('Request by Floor 3'),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text('Destination'),
//                         Row(
//                           children: [
//                             ElevatedButton(
//                               child: Text('Confirmed'),
//                               onPressed: toggleTab,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     //*********************second
//                     Center(
//                       child: ElevatedButton(
//                         child: Text('Confirmed'),
//                         onPressed: toggleBeforeTab,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

// class CircleTabIndicator extends Decoration {
//   final Color? color;
//   double? radius;
//   CircleTabIndicator({this.color, this.radius});
//   @override
//   BoxPainter createBoxPainter([VoidCallback? onChanged]) {
//     // TODO: implement createBoxPainter
//     return _CirclePainter(color: color, radius: radius);
//   }
// }

// class _CirclePainter extends BoxPainter {
//   final Color? color;
//   double? radius;
//   _CirclePainter({this.color, this.radius});
//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
//     Paint _paint = Paint();
//     _paint.color = color!;
//     _paint.isAntiAlias = true;
//     final Offset circleOffset =
//         Offset(configuration.size!.width / 2, configuration.size!.height - 40);
//     canvas.drawCircle(offset + circleOffset, radius!, _paint);
//   }
// }
