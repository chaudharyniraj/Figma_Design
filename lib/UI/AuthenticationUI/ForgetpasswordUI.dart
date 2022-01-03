import 'package:flutter/material.dart';

class ForgetpasswordUI extends StatefulWidget {
  @override
  _ForgetpasswordUIState createState() => _ForgetpasswordUIState();
}

class _ForgetpasswordUIState extends State<ForgetpasswordUI> {
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05),
                Text(
                  'Enter your phone number to request a password reset',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter Phone Number',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 18.0,
                  color: Colors.orange,
                  child: MaterialButton(
                      child: Text(
                        "Request OTP",
                        style: TextStyle(color: Colors.white),
                      ),
                      // color: Colors.orange,
                      minWidth: MediaQuery.of(context).size.width * 0.7,
                      onPressed: () {
                        // Navigator.of(context).pushNamed('/accountInfoUI');
                      }),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.orange),
                  onPressed: () {},
                  child: Text(
                    'Login into my account',
                    style: TextStyle(fontSize: 16),
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
