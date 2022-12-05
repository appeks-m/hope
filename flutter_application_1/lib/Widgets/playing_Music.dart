import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class playingMusic extends StatefulWidget {
  const playingMusic({super.key});

  @override
  State<playingMusic> createState() => _playingMusic();
}

class _playingMusic extends State<playingMusic> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        color: Color(0xff262932),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/Icon/cover.png'),
                Column(
                  children: [
                   Text( 'Like it Doesnt Hurt',
                       style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                             Text(
                              'Danito & Athina',
                              style: TextStyle(
                                  color: Color(0xff3c4550), fontSize: 8),
                            ),
                  ],
                ),
Positioned(child: ImageIcon(AssetImage('assets/Icon/play_btn.png'))),
SizedBox(width: 5,),
Positioned(child: ImageIcon(AssetImage('assets/Icon/frow.png'))),
              ],
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
