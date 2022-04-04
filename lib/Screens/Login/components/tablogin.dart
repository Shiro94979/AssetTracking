import 'package:flutter/material.dart';
import '/Screens/Login/components/textformfield_global.dart';
import '/Screens/Login/components/textformfield_pass_global.dart';
import '../components/custom_elevatedbutton.dart';

class TabLogin extends StatelessWidget {
  const TabLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(245, 245, 245, 2),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(40),
            ),
            Text(
              'Login in your account.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFormFieldGlobal(
                  fieldIcon: Icon(Icons.email),
                  fieldText: 'Email',
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormFieldPassGlobal(
                  fieldIcon: Icon(Icons.lock),
                  fieldText: 'Password',
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Foget Password ?'), //fogetPass Func!!!
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            CustomElevatedButton(
              text: 'Login',
              press: () {},
            ),
          ],
        ));
  }
}
