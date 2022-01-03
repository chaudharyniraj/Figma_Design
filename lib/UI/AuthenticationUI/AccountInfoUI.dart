import 'package:flutter/material.dart';

class AccountInfoUI extends StatefulWidget {
  const AccountInfoUI({Key? key}) : super(key: key);

  @override
  _AccountInfoUIState createState() => _AccountInfoUIState();
}

class _AccountInfoUIState extends State<AccountInfoUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Container()),
                      Expanded(
                        child: Image(
                          image: AssetImage(
                            'logo.png',
                          ),
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(primary: Colors.orange),
                          onPressed: () {},
                          child: Text(
                            'Skip',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Create an account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Welcome Friend enter your details so lets get started in booking table',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Image.asset(
                  'profile.png',
                  height: 100,
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Confirm password',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 18.0,
                  color: Colors.orange,
                  child: MaterialButton(
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                      // color: Colors.orange,
                      minWidth: MediaQuery.of(context).size.width * 0.7,
                      onPressed: () {
                        // Navigator.of(context).pushNamed('/accountInfoUI');
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
