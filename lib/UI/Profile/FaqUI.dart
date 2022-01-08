import 'package:flutter/material.dart';

class FaqUI extends StatefulWidget {
  @override
  _FaqUIState createState() => _FaqUIState();
}

class _FaqUIState extends State<FaqUI> {
  ScrollController  _scrollController = ScrollController();

  Widget ListofFaq(BuildContext context, int index, double width, double height){
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title'),
            Divider(),
            Text('Reasons')
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
                          'Faq',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height*0.01,),
                ListView.builder(
                  controller: _scrollController,
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return ListofFaq(context, index, width, height);
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
