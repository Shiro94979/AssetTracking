import 'package:flutter/material.dart';
import '/Screens/Login/components/textformfield_global.dart';
import '/Screens/Login/components/textformfield_pass_global.dart';
import '/Screens/Login/login_screen.dart';
import '../../home_navigation.dart';
import './components/custom_elevatedbutton.dart';

class LoginTabScreen extends StatefulWidget {
  @override
  State<LoginTabScreen> createState() => _LoginTabScreenState();
}

class _LoginTabScreenState extends State<LoginTabScreen> {
  @override
  Widget build(BuildContext context) {
    DefaultTabController(
        initialIndex: 1, // default is 0
        length: 2, // Number of Tabs
        child: Scaffold() // Main Layout
        );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0), // here the desired height
        child: AppBar(
          toolbarHeight: 120.0,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/Logo.png'),
            ],
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromARGB(255, 103, 224, 113),
                    Color.fromARGB(255, 13, 117, 53)
                  ]),
            ),
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: DefaultTabController(
          length: 2,
          child: SizedBox(
            height: double.infinity,
            child: Column(
              children: <Widget>[
                TabBar(
                  labelColor: Colors.green[900],
                  tabs: <Widget>[
                    Tab(
                      text: "Sign In",
                    ),
                    Tab(
                      text: "Get Started",
                    )
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                          color: Color.fromRGBO(245, 245, 245, 2),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20),
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
                                  Text('Foget Password ?'), //fogetPass Fu
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Container(
                                height: 2.0,
                                width: 300,
                                color: Colors.green,
                              ),
                              SizedBox(height: 15),
                              Text('or'),
                              SizedBox(height: 15),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/qrscan.png',
                                      height: 30,
                                      width: 40,
                                      fit: BoxFit.fitWidth,
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        primary: Colors.green,
                                        textStyle: const TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text('Scan your ID card'),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              CustomElevatedButton(
                                text: 'Login',
                                press: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeNavigation()));
                                },
                              ),
                            ],
                          )),
                      //**************************************Get Started************************************
                      Container(
                        color: Color.fromRGBO(245, 245, 245, 2),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Text(
                              'Request to join community.',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormFieldGlobal(
                              fieldIcon: Icon(Icons.email),
                              fieldText: 'Email',
                            ),
                            SizedBox(height: 20),
                            TextFormFieldGlobal(
                              fieldIcon: Icon(Icons.person),
                              fieldText: 'Email',
                            ),
                            SizedBox(height: 20),
                            TextFormFieldPassGlobal(
                              fieldIcon: Icon(Icons.lock),
                              fieldText: 'Password',
                            ),
                            SizedBox(height: 20),
                            TextFormFieldPassGlobal(
                              fieldIcon: Icon(Icons.lock),
                              fieldText: 'Repeat Password',
                            ),
                            SizedBox(height: 20),
                            CustomElevatedButton(
                              text: 'Join in comumunity',
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                            ),
                            SizedBox(height: 15),
                            Text(
                              'By creating an Account,you agree to Wasty\n Terms of use and Privacy policy',
                              textAlign: TextAlign.center,
                            ), //fogetPass Fu
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
