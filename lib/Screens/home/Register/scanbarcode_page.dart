import 'package:flutter/material.dart';
import 'package:projectapp/Screens/home/Register/scanrfi_page.dart';

class ScanbarcodePage extends StatefulWidget {
  ScanbarcodePage({Key? key}) : super(key: key);

  @override
  State<ScanbarcodePage> createState() => _ScanbarcodePageState();
}

class _ScanbarcodePageState extends State<ScanbarcodePage> {
  String? _result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Image.asset('assets/icons/Logo_two.png',
            fit: BoxFit.contain, height: 42),
        toolbarHeight: 58,
        actions: [
          IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: Icon(Icons.cancel),
              color: Colors.black,
            ),
            Container(
              width: 500,
              height: 250,
              child: Image.asset(
                'assets/images/Scanbarcode2.png',
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 203, 171, 74),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Scan asset barcode to read the asset \n MAC address.',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Image.asset('assets/images/qrscan.png'),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: 300,
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
                                    builder: (context) => ScanRfidPage()));
                          },
                          child: Text('I Got It')),
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
