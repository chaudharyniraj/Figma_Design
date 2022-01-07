import 'package:flutter/material.dart';

class ProfileUI extends StatefulWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  _ProfileUIState createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
//                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(height: height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Personal Details',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
//                        Navigator.of(context).pushReplacementNamed('/profileUI');
                        },
                        child: Text(
                          'Skip',
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('profile.png',width: width*0.3,),
                            Column(
                              children: [
                                Text('Name'),
                                Text('Location'),
                                Divider(color: Colors.orange,),
                                Text('Phone'),
                                Divider(color: Colors.orange,),
                                Text('DOB'),
                              ],
                            )
                          ],
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  Card(
                    child: Container(
                      height:height*0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Recent Booking',style: TextStyle(
                              fontSize: 20,
                            ),),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  Card(
                    child: Container(
                      height:height*0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Rewards',style: TextStyle(
                              fontSize: 20,
                            ),),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {
                                Navigator.of(context).pushNamed('/rewardsUI');
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  Card(
                    child: Container(
                      height:height*0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Share App',style: TextStyle(
                              fontSize: 20,
                            ),),
                            IconButton(
                              icon: Icon(Icons.share),
                              color: Colors.orange,
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  Card(
                    child: Container(
                      height:height*0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Faq',style: TextStyle(
                              fontSize: 20,
                            ),),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.1,),
                  TextButton(
                      child: Text('Log Out',

                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                            color: Colors.black
                        ),
                      ),
                      onPressed: () {
                        print('Pressed');
                      }
                  )
                ],
              ),
            )),
      ),
    );
  }
}
