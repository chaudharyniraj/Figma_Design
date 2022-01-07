import 'package:flutter/material.dart';

class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({Key? key}) : super(key: key);

  @override
  _HomeScreenUIState createState() => _HomeScreenUIState();
}

class _HomeScreenUIState extends State<HomeScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Container(
            color: Colors.amberAccent,
            child: Image(
              image: AssetImage(
                'logo.png',
              ),
              width: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
        ),
        title: Text('Simara'),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notification_add_rounded)),
        ],
      ),
    );
  }
}
