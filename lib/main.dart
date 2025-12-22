import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'dart:math';
>>>>>>> 5215955 (wrqkdc)

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      title: 'Викторина',
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'Roboto'),
      home: const QuizScreen(),
=======
      title: 'Умная Викторина',
      theme: ThemeData(primarySwatch: Colors.deepPurple, fontFamily: 'Roboto'),
      home: const StartScreen(),
>>>>>>> 5215955 (wrqkdc)
      debugShowCheckedModeBanner: false,
    );
  }
}

<<<<<<< HEAD
class Question {
  final String text;
  final List<Answer> answers;
  final int correctIndex;
=======
class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade900,
              Colors.indigo.shade700,
              Colors.blue.shade500,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.emoji_events,
                  size: 120,
                  color: Colors.amber.shade400,
                ),
                const SizedBox(height: 30),
                const Text(
                  '🧠 УМНАЯ ВИКТОРИНА',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Проверь свои знания!',
                  style: TextStyle(fontSize: 20, color: Colors.white70),
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade400,
                    foregroundColor: Colors.deepPurple.shade900,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 10,
                  ),
                  child: const Text(
                    'НАЧАТЬ ИГРУ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Question {
  final String text;
  final List<String> answers;
  final int correctIndex;
  final String emoji;
>>>>>>> 5215955 (wrqkdc)

  Question({
    required this.text,
    required this.answers,
    required this.correctIndex,
<<<<<<< HEAD
  });
}

class Answer {
  final String text;
  final Color color;
  final IconData icon;

  Answer({required this.text, required this.color, required this.icon});
}

=======
    required this.emoji,
  });
}

>>>>>>> 5215955 (wrqkdc)
class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

<<<<<<< HEAD
class _QuizScreenState extends State<QuizScreen> {
=======
class _QuizScreenState extends State<QuizScreen> with TickerProviderStateMixin {
>>>>>>> 5215955 (wrqkdc)
  int currentQuestion = 0;
  int score = 0;
  bool answered = false;
  int? selectedAnswer;
<<<<<<< HEAD

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

=======
  late AnimationController _progressController;
  late AnimationController _shakeController;
  late Animation<double> _shakeAnimation;

  final List<Question> questions = [
    Question(
      text: 'Какой элемент химической таблицы имеет символ "Au"?',
      answers: ['Серебро', 'Золото', 'Медь', 'Алюминий'],
      correctIndex: 1,
      emoji: '⚗️',
    ),
    Question(
      text: 'Столица какой страны - Токио?',
      answers: ['Китай', 'Корея', 'Япония', 'Таиланд'],
      correctIndex: 2,
      emoji: '🗾',
    ),
    Question(
      text: 'Кто написал роман "Война и мир"?',
      answers: ['Достоевский', 'Пушкин', 'Чехов', 'Толстой'],
      correctIndex: 3,
      emoji: '📚',
    ),
    Question(
      text: 'Сколько струн у стандартной гитары?',
      answers: ['4', '5', '6', '7'],
      correctIndex: 2,
      emoji: '🎸',
    ),
    Question(
      text: 'Какая планета известна как "Красная планета"?',
      answers: ['Венера', 'Марс', 'Юпитер', 'Сатурн'],
      correctIndex: 1,
      emoji: '🔴',
    ),
    Question(
      text: 'В каком году человек впервые высадился на Луну?',
      answers: ['1965', '1967', '1969', '1971'],
      correctIndex: 2,
      emoji: '🌙',
    ),
    Question(
      text: 'Какое животное изображено на логотипе Ferrari?',
      answers: ['Лев', 'Конь', 'Бык', 'Орел'],
      correctIndex: 1,
      emoji: '🏎️',
    ),
    Question(
      text: 'Сколько игроков в футбольной команде на поле?',
      answers: ['9', '10', '11', '12'],
      correctIndex: 2,
      emoji: '⚽',
    ),
    Question(
      text: 'Какой океан самый большой на Земле?',
      answers: ['Атлантический', 'Индийский', 'Северный Ледовитый', 'Тихий'],
      correctIndex: 3,
      emoji: '🌊',
    ),
    Question(
      text: 'Какая компания создала iPhone?',
      answers: ['Samsung', 'Apple', 'Google', 'Microsoft'],
      correctIndex: 1,
      emoji: '📱',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _shakeAnimation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(parent: _shakeController, curve: Curves.elasticIn),
    );
  }

  @override
  void dispose() {
    _progressController.dispose();
    _shakeController.dispose();
    super.dispose();
  }

>>>>>>> 5215955 (wrqkdc)
  void checkAnswer(int index) {
    if (answered) return;

    setState(() {
      answered = true;
      selectedAnswer = index;
<<<<<<< HEAD
      if (index == questions[currentQuestion].correctIndex) {
        score++;
      }
    });

    Future.delayed(const Duration(seconds: 2), () {
=======
    });

    if (index == questions[currentQuestion].correctIndex) {
      score++;
      _progressController.forward(from: 0);
    } else {
      _shakeController.forward(from: 0).then((_) => _shakeController.reverse());
    }

    Future.delayed(const Duration(milliseconds: 1500), () {
>>>>>>> 5215955 (wrqkdc)
      if (currentQuestion < questions.length - 1) {
        setState(() {
          currentQuestion++;
          answered = false;
          selectedAnswer = null;
        });
      } else {
<<<<<<< HEAD
        showResultDialog();
=======
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ResultScreen(score: score, total: questions.length),
          ),
        );
>>>>>>> 5215955 (wrqkdc)
      }
    });
  }

<<<<<<< HEAD
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
=======
  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestion];
    final colors = [
      Colors.pink.shade400,
      Colors.cyan.shade400,
      Colors.amber.shade400,
      Colors.green.shade400,
    ];
>>>>>>> 5215955 (wrqkdc)

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
<<<<<<< HEAD
            colors: [Colors.purple.shade700, Colors.blue.shade900],
=======
            colors: [
              Colors.indigo.shade900,
              Colors.purple.shade700,
              Colors.pink.shade500,
            ],
>>>>>>> 5215955 (wrqkdc)
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
<<<<<<< HEAD
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
=======
              // Progress Bar
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${currentQuestion + 1}/${questions.length}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 24,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '$score',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: (currentQuestion + 1) / questions.length,
                        backgroundColor: Colors.white24,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.amber.shade400,
                        ),
                        minHeight: 8,
>>>>>>> 5215955 (wrqkdc)
                      ),
                    ),
                  ],
                ),
              ),

<<<<<<< HEAD
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
=======
              const SizedBox(height: 20),

              // Question Card with Emoji
              AnimatedBuilder(
                animation: _shakeAnimation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(
                      _shakeAnimation.value * sin(currentQuestion),
                      0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
>>>>>>> 5215955 (wrqkdc)
                            ),
                          ],
                        ),
                        child: Column(
<<<<<<< HEAD
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
=======
                          children: [
                            Text(
                              question.emoji,
                              style: const TextStyle(fontSize: 60),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              question.text,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo.shade900,
                                height: 1.3,
                              ),
                              textAlign: TextAlign.center,
>>>>>>> 5215955 (wrqkdc)
                            ),
                          ],
                        ),
                      ),
<<<<<<< HEAD
                    );
                  },
=======
                    ),
                  );
                },
              ),

              const SizedBox(height: 40),

              // Answer Buttons
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    itemCount: question.answers.length,
                    itemBuilder: (context, index) {
                      final isCorrect = index == question.correctIndex;
                      final isSelected = selectedAnswer == index;

                      Color buttonColor = colors[index];
                      IconData icon = Icons.check_circle_outline;

                      if (answered) {
                        if (isCorrect) {
                          buttonColor = Colors.green.shade500;
                          icon = Icons.check_circle;
                        } else if (isSelected) {
                          buttonColor = Colors.red.shade500;
                          icon = Icons.cancel;
                        }
                      }

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: GestureDetector(
                          onTap: () => checkAnswer(index),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: buttonColor.withOpacity(0.5),
                                  blurRadius: 10,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      String.fromCharCode(65 + index),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Text(
                                    question.answers[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                if (answered)
                                  Icon(icon, color: Colors.white, size: 30),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
>>>>>>> 5215955 (wrqkdc)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
<<<<<<< HEAD
=======

class ResultScreen extends StatelessWidget {
  final int score;
  final int total;

  const ResultScreen({Key? key, required this.score, required this.total})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percentage = (score / total * 100).round();
    String message;
    String emoji;

    if (percentage >= 90) {
      message = 'НЕВЕРОЯТНО!';
      emoji = '🏆';
    } else if (percentage >= 70) {
      message = 'ОТЛИЧНО!';
      emoji = '🎉';
    } else if (percentage >= 50) {
      message = 'ХОРОШО!';
      emoji = '👍';
    } else {
      message = 'ПОПРОБУЙ ЕЩЁ!';
      emoji = '💪';
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade900,
              Colors.indigo.shade700,
              Colors.blue.shade500,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(emoji, style: const TextStyle(fontSize: 100)),
                  const SizedBox(height: 30),
                  Text(
                    message,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Ваш результат',
                          style: TextStyle(fontSize: 24, color: Colors.black54),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '$score',
                              style: TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo.shade900,
                              ),
                            ),
                            Text(
                              ' / $total',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.indigo.shade400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '$percentage%',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StartScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade400,
                      foregroundColor: Colors.deepPurple.shade900,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 18,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                    ),
                    child: const Text(
                      'ИГРАТЬ СНОВА',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
>>>>>>> 5215955 (wrqkdc)
