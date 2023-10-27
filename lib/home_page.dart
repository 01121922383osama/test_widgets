import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_widgets/chat_page.dart';
import 'package:test_widgets/stories_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  String titel = 'Chats';
  void selectedPage(int index) {
    setState(() {
      currentIndex = index;
      if (currentIndex == 1) {
        titel = 'Calls';
      } else if (currentIndex == 2) {
        titel = 'Peaple';
      } else if (currentIndex == 3) {
        titel = 'Stories';
      } else {
        titel = 'Chats';
      }
    });
  }

  List<Widget> pages = [
    const ChatPage(),
    const Center(
      child: Text('1'),
    ),
    const Center(
      child: Text('2'),
    ),
    const StoriesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          );
        }),
        title: Text(titel),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        onTap: selectedPage,
        items: const [
          BottomNavigationBarItem(
            label: 'Chats',
            icon: FaIcon(FontAwesomeIcons.solidComment),
          ),
          BottomNavigationBarItem(
            label: 'Calls',
            icon: FaIcon(FontAwesomeIcons.video),
          ),
          BottomNavigationBarItem(
            label: 'Peaple',
            icon: Icon(Icons.people_alt_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Stories',
            icon: Icon(Icons.amp_stories),
          ),
        ],
      ),
    );
  }
}
