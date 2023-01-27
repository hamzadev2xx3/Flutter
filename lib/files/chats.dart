import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        actions: const <Widget>[
          IconButton(
            icon: ImageIcon(
              AssetImage("lib/icons/add.png"),
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            /*  decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
            ),*/
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.bottomCenter,
            child: Image.asset('lib/icons/add.png'),
          ),
          Container(
            width: double.infinity,
            height: 50.0,
            /*   decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
            ),*/
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.topCenter,
            child: const Text('No Messages'),
          ),
        ],
      ),
    );
  }
}
