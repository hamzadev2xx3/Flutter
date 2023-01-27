// ignore: file_names
//import 'package:chewie/chewie.dart';
//import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/files/cardView.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/consts/styles.dart';
import 'package:flutter_application_1/files/mediaplayer.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      //theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          // backgroundColor: Colors.black,
          actions: const <Widget>[
            IconButton(
              icon: ImageIcon(
                AssetImage("lib/icons/chats.png"),
              ),
              onPressed: null,
            ),
            IconButton(
              icon: ImageIcon(
                AssetImage("lib/icons/settings.png"),
              ),
              onPressed: null,
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          //height: 300,
          //width: 400,
          //decoration: BoxDecoration(
          //  border: Border.all(color: Colors.black, width: 3),
          //  ),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                      10,
                      (index) => "Menu Items"
                          .text
                          .fontFamily(semibold)
                          .make()
                          .box
                          .rounded
                          .alignCenter
                          .hexColor("#454242")
                          //.black
                          .size(100, 23)
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .make()),
                ),
              ),
              20.heightBox,
              Row(
                children: List.generate(
                    1,
                    (index) => HomeCard(
                          height: context.screenHeight * 0.15,
                          width: context.screenWidth / 1.1,
                        )),
              ),
              30.heightBox,
              Row(
                children: const [
                  Text(
                    'PrayTV',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              20.heightBox,
              const SizedBox(
                // height: context.screenHeight * 0.25,
                // width: context.screenWidth / 1.1,
                child: mPlayer(),
              ).box.hexColor('#474747').size(350, 200).rounded.make(),
              30.heightBox,
              Row(
                children: const [Text('DummyText')],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected,
          type: BottomNavigationBarType.fixed,
          //   backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/icons/home.png"),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/icons/sleep.png"),
              ),
              label: 'Sleep',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/icons/read.png"),
              ),
              label: 'Read',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/icons/heart.png"),
              ),
              label: 'Pray',
            ),
          ],
          onTap: (index) {
            setState(() {
              selected = index;
            });
          },
        ),
      ),
    );
  }
}
