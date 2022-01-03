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
      appBar: AppBar(
        backgroundColor: Colors.white,
//        automaticallyImplyLeading: false,
      leading: Container(),
        title: Align(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage(
              'logo.png',
            ),
            width: MediaQuery.of(context).size.height * 0.05,
          ),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(primary: Colors.orange),
            onPressed: () {},
            child: Text(
              'Cancel',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create an account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Welcome Friend enter your details so lets get started in booking table',
                  textAlign: TextAlign.center,
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
                         Navigator.of(context).pushNamed('/forgetpasswordUI');
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
