import 'package:flutter/material.dart';
import 'package:flutter_application_1/files/HomecardView.dart';
import 'package:flutter_application_1/files/scrollCards.dart';
import 'package:flutter_application_1/files/smallScrollCards.dart';
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
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          //debugShowCheckedModeBanner: false,
          //themeMode: ThemeMode.dark,
          //theme: ThemeData(primarySwatch: Colors.deepPurple),
          //darkTheme: ThemeData(brightness: Brightness.dark),
          child: Scaffold(
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
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(15),
                //height: 300,
                //width: 400,
                //decoration: BoxDecoration(
                //  border: Border.all(color: Colors.black, width: 3),
                //),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: List.generate(
                          5,
                          (index) => GestureDetector(
                            onTap: () {
                              // Perform an action when the item is tapped
                              setState(() {
                                selected = index;
                                _scrollController.animateTo(
                                  index * 100,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeOut,
                                );
                              });
                            },
                            child: Text(
                              "Menu Items",
                              style: TextStyle(
                                fontFamily: semibold,
                                color: selected == index
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            )
                                .box
                                .rounded
                                .alignCenter
                                .hexColor(
                                    selected == index ? "#FFFFFF" : "#454242")
                                .size(100, 23)
                                .margin(
                                    const EdgeInsets.symmetric(horizontal: 4))
                                .make(),
                          ),
                        ),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    20.heightBox,
                    const SizedBox(
                      child: mPlayer(),
                    ).box.hexColor('#474747').size(350, 200).rounded.make(),
                    30.heightBox,
                    Row(
                      children: const [
                        Text(
                          'New Releases',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: cardList,
                      ),
                    ),
                    10.heightBox,
                    Row(
                      children: const [
                        Text(
                          'Previews',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: smallcardList,
                      ),
                    ),
                    //10.heightBox,
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 207, 184, 34),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'UNLOCK PRAY PREMIUM',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    )
                  ],
                ),
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
        )
      ],
    );
  }
}
