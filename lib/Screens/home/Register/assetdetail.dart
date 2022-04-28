import 'package:flutter/material.dart';
import 'package:projectapp/Screens/Login/components/custom_elevatedbutton.dart';
import './confirmdetail.dart';

class AssetDetail extends StatefulWidget {
  AssetDetail({Key? key}) : super(key: key);

  @override
  State<AssetDetail> createState() => _AssetDetailState();
}

class _AssetDetailState extends State<AssetDetail> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => {Navigator.pop(context)},
                  icon: Icon(Icons.cancel),
                  color: Colors.black,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                'Asset Detail',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 40),
            //*************** Barcode ID **************
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 320,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Barcode ID',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                      // controller: control,
                    ),
                  ),
                  SizedBox(height: 30),
                  //*************** RFID Tag ID ***************
                  Container(
                    width: 320,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'RFID Tag ID',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                      // controller: control,
                    ),
                  ),
                  SizedBox(height: 30),
                  //*************** Asset Name ***************
                  Container(
                    width: 320,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Asset Name',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                      // controller: control,
                    ),
                  ),
                  SizedBox(height: 30),
                  //************* Location ***************
                  Container(
                    width: 320,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Locations',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                      // controller: control,
                    ),
                  ),
                  SizedBox(height: 30),
                  //************* Asset Detail ***************
                  Container(
                    width: 320,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Asset Detail',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                      // controller: control,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConfirmDetail()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        textStyle: TextStyle(fontSize: 18),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 203, 171, 74),
                                Color.fromARGB(255, 203, 171, 74),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 320.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            'summit',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
