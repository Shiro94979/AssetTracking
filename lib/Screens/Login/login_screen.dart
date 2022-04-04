import 'package:flutter/material.dart';
import '/Screens/Login/components/custom_outlinedbutton.dart';
import '/Screens/Login/components/custom_elevatedbutton.dart';
import '/Screens/Login/logintab_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(children: [
        Container(child: Image.asset("assets/images/Logo.png")),
        SizedBox(height: 20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
            //   ),
            //   onPressed: () {},
            //   child: Text('Get Started'),
            // ),
            CustomElevatedButton(
              text: 'Get Started',
              press: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginTabScreen()));},
            ),
            SizedBox(height: 30,),
            CustomOutlindeButton(
              text: 'Login',
              press: () {},
            )
          ],
        ),
      ]),
    );
  }
}
