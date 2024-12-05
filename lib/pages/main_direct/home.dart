import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Фоновое изображение
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/media/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Текст поверх изображения
            Column(
              children: [
                Text(
                  'Привет,',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Пупупуууу',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: TaskSegment()),
                            Expanded(child: HoursSegment()),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5), // Уменьшенный отступ
                        height: MediaQuery.of(context).size.height / 5,
                        child: ProgressSegment(), // Новый сегмент прогресса
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5), // Уменьшенный отступ
                        height: MediaQuery.of(context).size.height / 5,
                        child: ContactSegment(), // Новый сегмент для связи с куратором
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Остальной код остается без изменений...


class TaskSegment extends StatefulWidget {
  const TaskSegment({super.key});

  @override
  _TaskSegmentState createState() => _TaskSegmentState();
}

class _TaskSegmentState extends State<TaskSegment> {
  List<Task> tasks = [
    Task(name: 'Задача 1', isCompleted: false),
    Task(name: 'Задача 2', isCompleted: false),
    Task(name: 'Задача 3', isCompleted: false),
    Task(name: 'Задача 4', isCompleted: false),
    Task(name: 'Задача 5', isCompleted: false),
    Task(name: 'Задача 6', isCompleted: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF508AA8), // Цвет большого сегмента
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Задачи',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: tasks.map((task) => TaskItem(
                      task: task,
                      onToggle: () {
                        setState(() {
                          task.isCompleted = !task.isCompleted;
                        });
                      },
                    )).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final Task task;
  final VoidCallback onToggle;

  TaskItem({super.key, required this.task, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF355B72).withOpacity(0.75), // Цвет маленького сегмента с прозрачностью
                borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: onToggle,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: task.isCompleted ? Colors.green : Colors.red,
                  width: 2,
                ),
              ),
              child: task.isCompleted
                  ? Icon(Icons.check, color: Colors.green, size: 20)
                  : null,
            ),
          ),
          SizedBox(width: 10),
          Expanded( // Используем Expanded для предотвращения выхода текста за границы
            child: Text(
              task.name,
              style: TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis, // Обработка переполнения текста
            ),
          ),
        ],
      ),
    );
  }
}

class Task {
  String name;
  bool isCompleted;

  Task({required this.name, required this.isCompleted});
}

class HoursSegment extends StatelessWidget {
  const HoursSegment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
      decoration: BoxDecoration(
        color: Color(0xFFE8C547), // Цвет нового сегмента
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/media/CircleClock.png', // Путь к изображению часов
                width: MediaQuery.of(context).size.width / 10,
                height: MediaQuery.of(context).size.width / 10,
              ),
              SizedBox(width: 5),
              Expanded( // Используем Expanded для предотвращения выхода текста за границы
                child: Text(
                  'Вы отработали следующее количество часов:',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.visible, // Изменено на visible
                  softWrap: true, // Добавлено для переноса текста
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            '40 часов / 5 дней / 80% от цели',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 30,
              color: Colors.black,
            ),
          ),
          Spacer(), // Заполняем пространство между текстом и изображением
          Align(
            alignment: Alignment.bottomCenter, // Выравниваем изображение по центру внизу
            child: Image.asset(
              'assets/media/FillingSurvey.png', // Путь к изображению задумчивого человека
              width: MediaQuery.of(context).size.width / 5, // Увеличиваем размер изображения
              height: MediaQuery.of(context).size.width / 4,
            ),
          ),
        ],
      ),
    );
  }
}


class ProgressSegment extends StatelessWidget {
  final double progress; // Прогресс в диапазоне от 0.0 до 1.0

  ProgressSegment({super.key, this.progress = 0.8}); // Установим значение по умолчанию на 80%

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF98CE00), // Цвет нового сегмента
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Ваш прогресс',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.width / 5,
            child: CircularProgressIndicator(
              value: progress, // Устанавливаем значение прогресса
              backgroundColor: Colors.white, // Цвет фона
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Цвет прогресса
            ),
          ),
        ],
      ),
    );
  }
}

class ContactSegment extends StatelessWidget {
  const ContactSegment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF508AA8),
                borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Связь с куратором',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10),
          Image.asset(
            'assets/media/AboutOurTeam.png', // Путь к изображению человека
            width: MediaQuery.of(context).size.width / 10, // Устанавливаем ширину изображения
            height: MediaQuery.of(context).size.width / 10, // Устанавливаем высоту изображения
          ),
        ],
      ),
    );
  }
}
