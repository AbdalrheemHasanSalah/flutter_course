import 'package:flutter/material.dart';
// audioplayers is a package that allows you to play audio files in flutter applications.
import 'package:audioplayers/audioplayers.dart' as ap;

//statless widget is a widget that does not require mutable state.
// It means that the widget's properties cannot change - all values are final.

// Stateful widget is a widget that has mutable state.
// It means that the widget can change its properties during its lifetime.

void main() {
  runApp(quranWidget());
}

// in nagmat app because not need to stop we use stateless widget put here stateful widget because we need to stop the audio when play another audio
// and dispose the audio player when the widget is removed from the widget tree
class quranWidget extends StatefulWidget {
  const quranWidget({super.key});

  @override
  State<quranWidget> createState() => _quranWidgetState();
}

class _quranWidgetState extends State<quranWidget> {
  late ap.AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = ap.AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void playquran(String quranFile) async {
    await player.stop();
    await player.play(ap.AssetSource(quranFile));
  }

  Expanded myButton(String iconpath, String quranFile, String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 211, 154, 30),
          ),
          onPressed: () {
            playquran(quranFile);
          },

          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Image.asset('images/$iconpath'),
                SizedBox(width: 10.0),
                Text(
                  buttonText,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFC9A24D),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 104, 92, 73),
          title: Text('قرآن'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton('الفاتحة.png', 'الفاتحة.mp3', 'سورة الفاتحة'),
            myButton('الجمعة.png', 'الجمعة.mp3', 'سورة الجمعة'),
            myButton('السجدة.png', 'السجدة.mp3', 'سورة السجدة'),
            myButton('الفتح.png', 'الفتح.mp3', 'سورة الفتح'),
            myButton('القدر.png', 'القدر.mp3', 'سورة القدر'),
            myButton('لقمان.png', 'لقمان.mp3', 'سورة لقمان'),
            myButton('محمد.png', 'محمد.mp3', 'سورة محمد'),
            myButton('يوسف.png', 'يوسف.mp3', 'سورة يوسف'),
          ],
        ),
      ),
    );
  }
}
