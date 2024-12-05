import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pro_bg.png'), // проверьте путь
            fit: BoxFit.cover,
          ),
        ),
        child: Center( // Используем Center или другой виджет для размещения кнопки
          child: SizedBox(
            width: 352,
            height: 112,
            child: ElevatedButton(
              onPressed: () {
                // 
              },
              child: Text('Задача'), // Добавьте текст или другой виджет
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromRGBO(211, 198, 78, 1),
                ),
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}