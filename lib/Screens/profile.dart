import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';



class Profile extends StatefulWidget {


  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    Widget _buildItem(ScanResult s) {
      return ListTile(
        leading: Text(s.rssi.toString()),
        title: Text(s.device.name),
        subtitle: Text(s.device.id.id),
      );
    }

    Widget _buildList(List<ScanResult> scanResults) {
      for (ScanResult sr in scanResults) {
        print(sr.device.id.id);
        print(sr.rssi.toString());
      }
      return Column(children: scanResults.map((v) => _buildItem(v)).toList());
    }

    Widget _buildBody() {
      return SingleChildScrollView(
        child: StreamBuilder<List<ScanResult>>(
            stream: FlutterBlue.instance.scanResults,
            initialData: [],
            builder: (c, snapshot) {
              // print(snapshot.data);
              // return Text('hi');
              return _buildList(snapshot.data!);
            }),
      );
    }

    return Scaffold(
      body: _buildBody(),
      floatingActionButton: StreamBuilder<bool>(
        stream: FlutterBlue.instance.isScanning,
        initialData: false,
        builder: (c, snapshot) {
          if (snapshot.data!) {
            return FloatingActionButton(
              child: Icon(Icons.stop),
              onPressed: () => FlutterBlue.instance.stopScan(),
              backgroundColor: Colors.red,
            );
          } else {
            return FloatingActionButton(
                child: Icon(Icons.search),
                onPressed: () => FlutterBlue.instance
                    .startScan(timeout: Duration(seconds: 10)));
          }
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
