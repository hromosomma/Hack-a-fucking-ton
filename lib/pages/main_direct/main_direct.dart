import 'package:flutter/material.dart';

import 'account.dart';
import 'home.dart';
import 'settings.dart';

class MainDirect extends StatefulWidget {
  const MainDirect({super.key});

  @override
  State<MainDirect> createState() => _MainDirectState();
}

class _MainDirectState extends State<MainDirect> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10), // Отступы слева, справа и снизу
        decoration: BoxDecoration(
          color: Color.fromRGBO(3, 25, 39, 0.85), // Цвет с 85% непрозрачностью
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20), // Округленные верхние углы
            bottom: Radius.circular(20), // Округленные нижние углы
          ),
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
            BottomNavigationBarItem(icon: Icon(Icons.task_outlined), label: 'Задачи'),
          ],
          currentIndex: currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,  // Цвет выбранного элемента
          backgroundColor: Colors.transparent, // Прозрачный фон
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0, // Убираем тень
        ),
      ),
    );
  }

  final pages = [
    Home(),
    Settings(),
    Account(),
  ];
}
