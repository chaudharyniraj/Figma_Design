import 'package:flutter/material.dart';

class RewardsUI extends StatefulWidget {
  @override
  _RewardsUIState createState() => _RewardsUIState();
}

class _RewardsUIState extends State<RewardsUI> {
  ScrollController  _scrollController = ScrollController();

  Widget ListofRewards(BuildContext context, int index, double width, double height){

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Points: $index',style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                ),),
                Divider(),
                Text('Hotel Name',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                Text('Hotel Address'),
                Text('Book Id:'),
                Text('Date:')
              ],
            ),
            Image.asset('profile.png',width: width*0.3,),
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
                          'Rewards',
                          style: TextStyle(
                            fontSize: 25,
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
                SizedBox(height: height*0.01,),
                ListView.builder(
                  controller: _scrollController,
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return ListofRewards(context, index, width, height);
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
