import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
      floatingActionButton: FloatingActionButton(
        // focusColor: Color(0xFFC90000),
        backgroundColor: Color(0xFFC90000),
        shape: CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.qr_code,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Color(0xFFC90000),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.music_note,
                color: Color(0xFFC90000),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.bookmark,
                color: Color(0xFFC90000),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Color(0xFFC90000),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
