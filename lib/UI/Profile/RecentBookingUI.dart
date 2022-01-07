import 'package:flutter/material.dart';

class RecentBookingUI extends StatefulWidget {
  @override
  _RecentBookingUIState createState() => _RecentBookingUIState();
}

class _RecentBookingUIState extends State<RecentBookingUI> {


  ScrollController  _scrollController = ScrollController();

  Widget ListofRecentBooking(BuildContext context, int index, double width, double height){

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height:height*0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.orange,
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chicken Station',style: TextStyle(
                      color: Colors.orange,
                      fontSize: 25,
                    ),),
                    Divider(),
                    Text('Location'),
                    Text('Ph no: '),
                    Text('Booked on:'),
                  ],
                ),
                Image.asset('profile.png',width: width*0.2,),
              ],
            ),
            SizedBox(height: height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.people),
                Container(
                  height:height*0.03,
                  width: width*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Colors.orange,
                    ),
                    color: Colors.orange,
                  ),
                  child: Text('25',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Icon(Icons.calendar_today),
                Container(
                  height:height*0.03,
                  width: width*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Colors.orange,
                    ),
                    color: Colors.orange,
                  ),
                  child: Text('25',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Icon(Icons.access_time),
                Container(
                  height:height*0.03,
                  width: width*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Colors.orange,
                    ),
                    color: Colors.orange,
                  ),
                  child: Text('25',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),

      ),
    );
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                          'Recent Booking',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height:height*0.07,
                          width: width*0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            border: Border.all(
                              color: Colors.orange,
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [

                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height*0.01,),
                ListView.builder(
                  controller: _scrollController,
                  itemCount: 1,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return ListofRecentBooking(context, index, width, height);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
