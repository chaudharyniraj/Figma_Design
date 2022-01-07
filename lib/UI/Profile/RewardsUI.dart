import 'package:flutter/material.dart';

class RewardsUI extends StatefulWidget {
  @override
  _RewardsUIState createState() => _RewardsUIState();
}

class _RewardsUIState extends State<RewardsUI> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(height: height*0.02,),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height:height*0.1,
                      width: width*0.15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.orange,
                        ),
//                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('150',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.orange
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
