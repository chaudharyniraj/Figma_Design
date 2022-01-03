import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage(
              'logo.png',
            ),
            width: MediaQuery.of(context).size.height * 0.05,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                // cursorColor: Theme.of(context).cursorColor,
                // initialValue: 'Phone Number',
                // maxLength: 20,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                elevation: 18.0,
                color: Colors.orange,
                // clipBehavior: Clip.antiAlias,
                child: MaterialButton(
                    child: Text(
                      "Proceed",
                      style: TextStyle(color: Colors.white),
                    ),
                    // color: Colors.orange,
                    minWidth: MediaQuery.of(context).size.width * 0.7,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/otpUI');
                    }),
              ),
              SizedBox(height: 10),
              // Align(
              //   alignment: Alignment.center,
              //   child: TextButton(
              //     style: TextButton.styleFrom(primary: Colors.black),
              //     onPressed: () {},
              //     child: Text(
              //       'Terms and Condition',
              //       style: TextStyle(fontSize: 16),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
