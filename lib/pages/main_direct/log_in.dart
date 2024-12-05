import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/main_direct/sign_in_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogIn();
}

class _LogIn extends State<LogIn> {

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
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 239),
              const Text(
                'Стажеры',
                style: TextStyle(
                  fontSize: 64,
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 58.5), // Отступ снизу
                 child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 353, // Ширина кнопки
                        height: 80, // Высота кнопки
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignInPage()),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(159, 196, 59, 1), // Цвет фона
                            ),
                          ),
                          child: const Text('Вход', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
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
