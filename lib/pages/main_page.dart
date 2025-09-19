import 'package:flutter/material.dart';
import 'package:tugas2/pages/home_page.dart';
import 'package:tugas2/pages/profil_page.dart';
import 'package:tugas2/pages/setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [HomePage(), SettingPage(), ProfilPage()][index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Setting'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
