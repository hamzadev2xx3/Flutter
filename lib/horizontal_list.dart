import 'package:flutter/material.dart';

class Horizontal extends StatelessWidget {
  const Horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
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
      ),
    );
  }
}
