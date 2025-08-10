import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(siond());
}

class siond extends StatelessWidget {
  siond({super.key});
  void playmuisc(int koko) {
    final player = AudioPlayer();
    player.play(AssetSource('music-$koko.mp3'));
  }

  Expanded myButton(int koko, Color foregroundColor, String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(
              255,
              241,
              240,
              240,
            ), // لون الزر
            foregroundColor: foregroundColor, // لون النص أو الأيقونة
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ), // مسافة داخلية
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // حواف دائرية
            ),
          ),
          onPressed: () {
            playmuisc(koko);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(Icons.music_note),
                SizedBox(width: 20),
                Text(
                  '$text',
                  style: TextStyle(fontSize: 18), // حجم النص
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
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.purple,
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text(
              'Nagamat',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10),
              myButton(1, const Color.fromRGBO(0, 0, 0, 1), 'samsung Galaxy'),
              myButton(
                2,
                const Color.fromARGB(255, 196, 50, 50),
                'samsung Note',
              ),

              myButton(3, const Color.fromARGB(255, 230, 156, 28), 'Nokia'),
              myButton(4, const Color.fromARGB(255, 48, 29, 142), 'ipon 11'),
              myButton(5, const Color.fromARGB(255, 118, 26, 82), 'WhatsApp'),
              myButton(
                6,
                const Color.fromARGB(255, 207, 140, 64),
                'samsung s7',
              ),
              myButton(7, const Color.fromARGB(255, 68, 46, 154), 'ipone 6'),
              myButton(8, const Color.fromARGB(255, 86, 16, 18), 'Nokia 45'),
            ],
          ),
        ),
      ),
    );
  }
}
