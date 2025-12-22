import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Викторина',
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'Roboto'),
      home: const QuizScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Question {
  final String text;
  final List<Answer> answers;
  final int correctIndex;

  Question({
    required this.text,
    required this.answers,
    required this.correctIndex,
  });
}

class Answer {
  final String text;
  final Color color;
  final IconData icon;

  Answer({required this.text, required this.color, required this.icon});
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  int score = 0;
  bool answered = false;
  int? selectedAnswer;

  final List<Question> questions = [
    Question(
      text: 'Какая планета самая большая в Солнечной системе?',
      answers: [
        Answer(text: 'Марс', color: Colors.red, icon: Icons.circle),
        Answer(text: 'Юпитер', color: Colors.blue, icon: Icons.square),
        Answer(
          text: 'Сатурн',
          color: Colors.orange,
          icon: Icons.change_history,
        ),
        Answer(text: 'Нептун', color: Colors.green, icon: Icons.star),
      ],
      correctIndex: 1,
    ),
    Question(
      text: 'Сколько континентов на Земле?',
      answers: [
        Answer(text: '5', color: Colors.red, icon: Icons.circle),
        Answer(text: '6', color: Colors.blue, icon: Icons.square),
        Answer(text: '7', color: Colors.orange, icon: Icons.change_history),
        Answer(text: '8', color: Colors.green, icon: Icons.star),
      ],
      correctIndex: 2,
    ),
    Question(
      text: 'Какой язык программирования использует Flutter?',
      answers: [
        Answer(text: 'Java', color: Colors.red, icon: Icons.circle),
        Answer(text: 'Python', color: Colors.blue, icon: Icons.square),
        Answer(text: 'Dart', color: Colors.orange, icon: Icons.change_history),
        Answer(text: 'JavaScript', color: Colors.green, icon: Icons.star),
      ],
      correctIndex: 2,
    ),
    Question(
      text: 'В каком году был основан Google?',
      answers: [
        Answer(text: '1996', color: Colors.red, icon: Icons.circle),
        Answer(text: '1998', color: Colors.blue, icon: Icons.square),
        Answer(text: '2000', color: Colors.orange, icon: Icons.change_history),
        Answer(text: '2002', color: Colors.green, icon: Icons.star),
      ],
      correctIndex: 1,
    ),
    Question(
      text: 'Какое животное самое быстрое на суше?',
      answers: [
        Answer(text: 'Лев', color: Colors.red, icon: Icons.circle),
        Answer(text: 'Гепард', color: Colors.blue, icon: Icons.square),
        Answer(
          text: 'Антилопа',
          color: Colors.orange,
          icon: Icons.change_history,
        ),
        Answer(text: 'Конь', color: Colors.green, icon: Icons.star),
      ],
      correctIndex: 1,
    ),
  ];

  void checkAnswer(int index) {
    if (answered) return;

    setState(() {
      answered = true;
      selectedAnswer = index;
      if (index == questions[currentQuestion].correctIndex) {
        score++;
      }
    });

    Future.delayed(const Duration(seconds: 2), () {
      if (currentQuestion < questions.length - 1) {
        setState(() {
          currentQuestion++;
          answered = false;
          selectedAnswer = null;
        });
      } else {
        showResultDialog();
      }
    });
  }

  void showResultDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('🎉 Викторина завершена!'),
        content: Text(
          'Ваш результат:\n$score из ${questions.length}',
          style: const TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                currentQuestion = 0;
                score = 0;
                answered = false;
                selectedAnswer = null;
              });
            },
            child: const Text('Начать заново'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestion];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple.shade700, Colors.blue.shade900],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Вопрос ${currentQuestion + 1}/${questions.length}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Счет: $score',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Question Card
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Text(
                    question.text,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Answer Buttons
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1.2,
                  ),
                  itemCount: question.answers.length,
                  itemBuilder: (context, index) {
                    final answer = question.answers[index];
                    final isCorrect = index == question.correctIndex;
                    final isSelected = selectedAnswer == index;

                    Color buttonColor = answer.color;
                    if (answered) {
                      if (isCorrect) {
                        buttonColor = Colors.green;
                      } else if (isSelected) {
                        buttonColor = Colors.red;
                      }
                    }

                    return GestureDetector(
                      onTap: () => checkAnswer(index),
                      child: Container(
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: buttonColor.withOpacity(0.5),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(answer.icon, color: Colors.white, size: 40),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Text(
                                answer.text,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
