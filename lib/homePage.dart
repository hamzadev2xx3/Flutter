import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.deepPurple),
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 50,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('All'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 100,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Favourites'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 70,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Sleep'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 70,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Bible'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 80,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Plans'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 120,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Old Testament'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 130,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('New Testament'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 90,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Podcasts'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 80,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Books'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 100,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Inspiration'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 90,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Podcasts'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 90,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Espanol'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: 100,
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Languages'),
                  ),
                ),
                // Add additional menu items here
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
    );
  }
}
