import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/main_direct/home.dart';

class SignInFIOPage extends StatefulWidget {
  const SignInFIOPage({super.key});

  @override
  State<SignInFIOPage> createState() => _SignInFIOPage();
}

class _SignInFIOPage extends State<SignInFIOPage> {
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
        // ignore: prefer_const_constructors
        child: Center(
          child: Column(
            mainAxisSize:
            MainAxisSize.min, // Чтобы избежать лишнего пространства
            children: [
              const SizedBox(height: 50), // Начальный отступ сверху для текста
              const Text(
                'Регистрация',
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
                  padding: EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0), // Отступы по бокам
                  child: Column(
                    children: [
                      SizedBox(
                        width: double
                            .infinity, // Чтобы поле ввода растягивалось по ширине
                        height: 70, // Фиксированная высота поля ввода
                        child: Center(
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true, // Включаем заполнение фоном
                              fillColor: Colors.white, // Устанавливаем цвет фона
                              border: OutlineInputBorder(),
                              labelText: "Фамилия",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 50.0,
                                  horizontal: 60.0), // Отступы внутри поля
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      SizedBox(
                        width: double
                            .infinity, // Чтобы поле ввода растягивалось по ширине
                        height: 70, // Фиксированная высота поля ввода
                        child: Center(
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true, // Включаем заполнение фоном
                              fillColor: Colors.white, // Устанавливаем цвет фона
                              border: OutlineInputBorder(),
                              labelText: "Имя",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 50.0,
                                  horizontal: 60.0), // Отступы внутри поля
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      SizedBox(
                        width: double
                            .infinity, // Чтобы поле ввода растягивалось по ширине
                        height: 70, // Фиксированная высота поля ввода
                        child: Center(
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true, // Включаем заполнение фоном
                              fillColor: Colors.white, // Устанавливаем цвет фона
                              border: OutlineInputBorder(),
                              labelText: "Отчество",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 50.0,
                                  horizontal: 60.0), // Отступы внутри поля
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 126, // Ширина кнопки
                height: 61, // Высота кнопки
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInFIOPage()),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/button.png"),
                          fit: BoxFit.cover),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Home()),
                            );
                      }, child: null,
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