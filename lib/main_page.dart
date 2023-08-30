import 'package:alterra_batch_4/controller/counter_controller.dart';
import 'package:alterra_batch_4/cubit/counter_cubit.dart';
import 'package:alterra_batch_4/home_page.dart';
import 'package:alterra_batch_4/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final counterCubit = CounterCubit();
  final counterController = CounterController();

  final pages = [
    const HomePage(),
    const ProfilePage()
  ];

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
