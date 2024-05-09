import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const urll());
}

class urll extends StatelessWidget {
  const urll({super.key});

  void urlaunch(String s) async {
    String ur = 'https://web.facebook.com/IEEE.BUB.SB';
    if (s == 'facebok') {
      ur = 'https://web.facebook.com/IEEE.BUB.SB';
    } else if (s == 'youtube') {
      ur = 'https://www.youtube.com/@ieeebub5503';
    }

//انا كده خرجت من الجزء ده ومعايا الurl
    if (await launchUrlString(ur)) {
      await launch(ur);
    } else {
      print('erroor');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'URL LAUNCHER',
            style: TextStyle(
                color: Color(0xff03406d), fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Expanded(
            child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xfff8faf9),
                Color.fromARGB(255, 84, 159, 225),
              ],
            ),
          ),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(80)),
                  width: 100,
                  height: 140,
                  child: Image(image: AssetImage('assets/ieeelo.jpg'))),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      urlaunch('facebok');
                    },
                    icon: Icon(
                      Icons.facebook,
                      size: 70,
                      color: Colors.blue[800],
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  IconButton(
                    onPressed: () {
                      urlaunch('youtube');
                    },
                    icon: Icon(
                      FontAwesomeIcons.youtube,
                      size: 70,
                      color: Colors.red[700],
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
