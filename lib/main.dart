import 'package:flutter/material.dart';
<<<<<<< HEAD
<<<<<<< HEAD
=======
import 'dart:math';
>>>>>>> 5215955 (wrqkdc)
=======
import 'dart:math';
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)

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
<<<<<<< HEAD
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'Roboto'),
      home: const QuizScreen(),
=======
      title: 'Умная Викторина',
      theme: ThemeData(primarySwatch: Colors.deepPurple, fontFamily: 'Roboto'),
      home: const StartScreen(),
>>>>>>> 5215955 (wrqkdc)
=======
      theme: ThemeData(primarySwatch: Colors.grey, fontFamily: 'Roboto'),
      home: const StartScreen(),
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
      debugShowCheckedModeBanner: false,
    );
  }
}

<<<<<<< HEAD
<<<<<<< HEAD
class Question {
  final String text;
  final List<Answer> answers;
  final int correctIndex;
=======
=======
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
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
=======
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: const Icon(Icons.quiz, size: 80, color: Colors.black),
              ),
              const SizedBox(height: 40),
              const Text(
                'ВИКТОРИНА',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 4,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Проверьте свои знания',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 80),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuizScreen()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 70,
                    vertical: 22,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Text(
                    'НАЧАТЬ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ],
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
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

<<<<<<< HEAD
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
=======
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
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
      text: 'Какой год считается началом Второй мировой войны?',
      answers: ['1937', '1939', '1941', '1945'],
      correctIndex: 1,
    ),
    Question(
      text: 'Какая самая длинная река в мире?',
      answers: ['Амазонка', 'Нил', 'Миссисипи', 'Янцзы'],
      correctIndex: 1,
    ),
    Question(
      text: 'Сколько костей в теле взрослого человека?',
      answers: ['186', '206', '226', '246'],
      correctIndex: 1,
    ),
    Question(
      text: 'Кто изобрел телефон?',
      answers: ['Эдисон', 'Белл', 'Тесла', 'Маркони'],
      correctIndex: 1,
    ),
    Question(
      text: 'Какая планета самая большая в Солнечной системе?',
      answers: ['Сатурн', 'Нептун', 'Юпитер', 'Уран'],
      correctIndex: 2,
    ),
    Question(
      text: 'В каком году был основан Google?',
      answers: ['1996', '1998', '2000', '2002'],
      correctIndex: 1,
    ),
    Question(
      text: 'Какой элемент имеет атомный номер 1?',
      answers: ['Гелий', 'Водород', 'Литий', 'Углерод'],
      correctIndex: 1,
    ),
    Question(
      text: 'Кто написал "Мастер и Маргарита"?',
      answers: ['Пастернак', 'Булгаков', 'Набоков', 'Солженицын'],
      correctIndex: 1,
    ),
    Question(
      text: 'Сколько континентов на Земле?',
      answers: ['5', '6', '7', '8'],
      correctIndex: 2,
    ),
    Question(
      text: 'Какая скорость света в вакууме?',
      answers: ['200 000 км/с', '300 000 км/с', '400 000 км/с', '500 000 км/с'],
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
=======
    });

    if (index == questions[currentQuestion].correctIndex) {
      score++;
    }

    Future.delayed(const Duration(milliseconds: 1200), () {
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
      if (currentQuestion < questions.length - 1) {
        setState(() {
          currentQuestion++;
          answered = false;
          selectedAnswer = null;
        });
      } else {
<<<<<<< HEAD
<<<<<<< HEAD
        showResultDialog();
=======
=======
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ResultScreen(score: score, total: questions.length),
          ),
        );
<<<<<<< HEAD
>>>>>>> 5215955 (wrqkdc)
=======
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
      }
    });
  }

<<<<<<< HEAD
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

=======
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
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
<<<<<<< HEAD
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
=======
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white, width: 1),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Вопрос ${currentQuestion + 1}/${questions.length}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Счёт: ',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          Text(
                            '$score',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: LinearProgressIndicator(
                      value: (currentQuestion + 1) / questions.length,
                      backgroundColor: Colors.grey.shade800,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Colors.white,
                      ),
                      minHeight: 4,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),

            // Question
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(35),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  question.text,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const SizedBox(height: 50),

            // Answers
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView.builder(
                  itemCount: question.answers.length,
                  itemBuilder: (context, index) {
                    final isCorrect = index == question.correctIndex;
                    final isSelected = selectedAnswer == index;

                    Color bgColor = Colors.black;
                    Color borderColor = Colors.white;
                    Color textColor = Colors.white;

                    if (answered) {
                      if (isCorrect) {
                        bgColor = Colors.white;
                        textColor = Colors.black;
                        borderColor = Colors.white;
                      } else if (isSelected) {
                        bgColor = Colors.black;
                        borderColor = Colors.grey.shade700;
                        textColor = Colors.grey.shade700;
                      }
                    }

<<<<<<< HEAD
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
=======
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () => checkAnswer(index),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: bgColor,
                            border: Border.all(color: borderColor, width: 2),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: textColor,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Center(
                                  child: Text(
                                    String.fromCharCode(65 + index),
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
                                ),
                              ),
<<<<<<< HEAD
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
=======
                              const SizedBox(width: 20),
                              Expanded(
                                child: Text(
                                  question.answers[index],
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              if (answered && isCorrect)
                                Icon(Icons.check, color: textColor, size: 28),
                              if (answered && isSelected && !isCorrect)
                                Icon(Icons.close, color: textColor, size: 28),
                            ],
                          ),
>>>>>>> 125d340 (Обновлен дизайн: черно-белая тема и новые вопросы)
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
            ),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;
  final int total;

  const ResultScreen({Key? key, required this.score, required this.total})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percentage = (score / total * 100).round();
    String message;

    if (percentage >= 90) {
      message = 'ПРЕВОСХОДНО';
    } else if (percentage >= 70) {
      message = 'ХОРОШО';
    } else if (percentage >= 50) {
      message = 'НЕПЛОХО';
    } else {
      message = 'ПОПРОБУЙТЕ ЕЩЁ';
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: const Icon(
                    Icons.emoji_events_outlined,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 3,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'ВАШ РЕЗУЛЬТАТ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          letterSpacing: 2,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '$score',
                            style: const TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            ' / $total',
                            style: const TextStyle(
                              fontSize: 35,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        '$percentage%',
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StartScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'ЗАНОВО',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 2,
                      ),
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
