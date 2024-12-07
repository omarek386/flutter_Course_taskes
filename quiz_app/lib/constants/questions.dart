import 'package:quiz_app/models/questions.dart';
import '../models/answers.dart';

List<Questions> questions = [
  Questions(question: 'What is the capital of France?', answers: [
    Answers(answer: 'Paris', isCorrect: true),
    Answers(answer: 'London', isCorrect: false),
    Answers(answer: 'Berlin', isCorrect: false),
    Answers(answer: 'Madrid', isCorrect: false)
  ]),
  Questions(question: 'What is 2 + 2?', answers: [
    Answers(answer: '3', isCorrect: false),
    Answers(answer: '4', isCorrect: true),
    Answers(answer: '5', isCorrect: false),
    Answers(answer: '6', isCorrect: false)
  ]),
  Questions(question: 'Which planet is known as the Red Planet?', answers: [
    Answers(answer: 'Earth', isCorrect: false),
    Answers(answer: 'Mars', isCorrect: true),
    Answers(answer: 'Jupiter', isCorrect: false),
    Answers(answer: 'Saturn', isCorrect: false)
  ]),
  Questions(question: 'What is the largest ocean on Earth?', answers: [
    Answers(answer: 'Atlantic Ocean', isCorrect: false),
    Answers(answer: 'Indian Ocean', isCorrect: false),
    Answers(answer: 'Arctic Ocean', isCorrect: false),
    Answers(answer: 'Pacific Ocean', isCorrect: true)
  ]),
  Questions(question: 'What is the capital of Japan?', answers: [
    Answers(answer: 'Beijing', isCorrect: false),
    Answers(answer: 'Seoul', isCorrect: false),
    Answers(answer: 'Tokyo', isCorrect: true),
    Answers(answer: 'Bangkok', isCorrect: false)
  ]),
  Questions(question: 'What is the largest mammal in the world?', answers: [
    Answers(answer: 'Elephant', isCorrect: false),
    Answers(answer: 'Blue Whale', isCorrect: true),
    Answers(answer: 'Giraffe', isCorrect: false),
    Answers(answer: 'Hippopotamus', isCorrect: false)
  ]),
  Questions(question: 'What is the largest bird in the world?', answers: [
    Answers(answer: 'Ostrich', isCorrect: false),
    Answers(answer: 'Eagle', isCorrect: false),
    Answers(answer: 'Albatross', isCorrect: false),
    Answers(answer: 'Owl', isCorrect: true)
  ]),
  Questions(question: 'What is the smallest country in the world?', answers: [
    Answers(answer: 'Monaco', isCorrect: false),
    Answers(answer: 'Vatican City', isCorrect: true),
    Answers(answer: 'San Marino', isCorrect: false),
    Answers(answer: 'Nauru', isCorrect: false)
  ]),
  Questions(question: 'What is the largest country in the world?', answers: [
    Answers(answer: 'Canada', isCorrect: false),
    Answers(answer: 'China', isCorrect: false),
    Answers(answer: 'Russia', isCorrect: true),
    Answers(answer: 'United States', isCorrect: false)
  ]),
  Questions(question: 'What is the smallest ocean in the world?', answers: [
    Answers(answer: 'Atlantic Ocean', isCorrect: false),
    Answers(answer: 'Indian Ocean', isCorrect: false),
    Answers(answer: 'Arctic Ocean', isCorrect: false),
    Answers(answer: 'Arctic Ocean', isCorrect: true)
  ]),
];
