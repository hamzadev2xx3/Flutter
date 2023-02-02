import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class localAudio extends StatelessWidget {
  const localAudio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Audio',
      theme: ThemeData(
        primaryColorDark: Colors.black,
      ),
      home: const MPage(title: 'Audio Player'),
    );
  }
}

class MPage extends StatefulWidget {
  const MPage({super.key, required this.title});

  final String title;

  @override
  State<MPage> createState() => _MPState();
}

class _MPState extends State<MPage> {
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Player'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //const TextStyle('Local Audio Player'),
              20.heightBox,
              const Text(
                'Local Audio Player',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              10.heightBox,
              ElevatedButton(
                onPressed: () {
                  player.play(AssetSource('surahrahman.mp3'));
                },
                child: const Text('Play Audio'),
              ),
              ElevatedButton(
                onPressed: () {
                  player.stop();
                },
                child: const Text('Stop Audio'),
              ),
              ElevatedButton(
                onPressed: () {
                  player.pause();
                },
                child: const Text('Pause Audio'),
              ),
              ElevatedButton(
                onPressed: () {
                  player.resume();
                },
                child: const Text('Resume Audio'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
