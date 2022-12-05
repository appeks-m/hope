import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/playing_Music.dart';
import 'Page3.dart';
import 'Search.dart';
import 'Settimg.dart';

void main() {
  runApp(const MyApp());
}

const primaryColor = Color(0xFF202128);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool m1 = false;
  bool f1 = false;
  bool a1 = false;
  bool v1 = false;
  bool s1 = false;
  List<String> Music = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          leadingWidth: 40,
          elevation: 1,
          shadowColor: Colors.grey,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: GestureDetector(
              child: const ImageIcon(
                AssetImage('assets/Icon/menu.png'),
                color: Color(0xff3c4550),
              ),
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Setting()));
                });
              },
            ),
          ),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: const Text(
                  'Filter',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(
                width: 22,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: const Text(
                  'Arrange',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(
                width: 22,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: const Text(
                  'View',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: GestureDetector(
                child: const ImageIcon(AssetImage('assets/Icon/search.png'),
                    color: Color(0xff3c4550)),
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Search()));
                  });
                },
              ),
            ),
          ],
        ),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 12),
            child: Container(
              color: primaryColor,
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 14,
                childAspectRatio: 2 / 2.5,
                crossAxisSpacing: 7,
                children: List<Widget>.generate(Music.length, ($index) {
                  return Card(
                    elevation: 0,
                    clipBehavior: Clip.hardEdge,
                    color: primaryColor,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 0,
                          height: 110,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const Image(
                              image: AssetImage('assets/Icon/cover.png'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const Page3()));
                          },
                        ),
                        const Positioned(
                          top: 2,
                          left: 5,
                          child: ImageIcon(
                            AssetImage("assets/Icon/music.png"),
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          top: 2,
                          right: 5,
                          child: ImageIcon(
                            AssetImage("assets/Icon/menu.png"),
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                            bottom: 11,
                            child: Text(
                              'Like it Doesnt Hurt',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )),
                        const Positioned(
                            bottom: 2,
                            child: Text(
                              'Danito & Athina',
                              style: TextStyle(
                                  color: Color(0xff3c4550), fontSize: 8),
                            )),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          const Positioned(bottom: 0, left: 8, right: 8, child: playingMusic())
        ]));
  }
}


