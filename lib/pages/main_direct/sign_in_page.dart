import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/main_direct/sign_in_fio_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bc.png'), // Фон
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Чтобы избежать лишнего пространства
            children: [
              const SizedBox(height: 180), // Начальный отступ сверху для текста
              const Text(
                'Вход',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40), // Отступ между текстом и полем ввода
              // Поле ввода
              const Card(
                color: Color.fromRGBO(152, 206, 0, 1),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0), // Отступы по бокам
                  child: SizedBox(
                    width: double.infinity, // Чтобы поле ввода растягивалось по ширине
                    height: 70, // Фиксированная высота поля ввода
                    child: Center(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true, // Включаем заполнение фоном
                          fillColor: Colors.white, // Устанавливаем цвет фона
                          border: OutlineInputBorder(),
                          labelText: "Код организации",
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0), // Отступы внутри поля
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: 126, // Ширина кнопки
                height: 61, // Высота кнопки
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignInFIOPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, // Убираем стандартные отступы
                    shape: RoundedRectangleBorder(),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/button.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: const Text(

                        'Продолжить', // Текст кнопки
                        style: TextStyle(color: Colors.white), // Цвет текста
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
