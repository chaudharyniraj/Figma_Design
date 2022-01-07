import 'package:e_commerce/UI/Model/Onboarding_contents.dart';
import 'package:e_commerce/UI/Model/Slidedot.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class OnBoardingUI extends StatefulWidget {
  const OnBoardingUI({Key? key}) : super(key: key);

  @override
  _OnBoardingUIState createState() => _OnBoardingUIState();
}

class _OnBoardingUIState extends State<OnBoardingUI> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentIndex < 2) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }

      _controller.animateToPage(currentIndex,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // _pageChange(int index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  style: TextButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/profileUI');
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Text(
                            contents[i].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Image.asset(
                            contents[i].image,
                            height: 200,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 35),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < contents.length; i++)
                      if (i == currentIndex) Slidedot(true) else Slidedot(false)
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                readOnly: true,
                onTap: () {
                  // print('hello login');
                  Navigator.of(context).pushNamed('/loginUI');
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  style: TextButton.styleFrom(primary: Colors.black),
                  onPressed: () {},
                  child: Text(
                    'Terms and Condition',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
