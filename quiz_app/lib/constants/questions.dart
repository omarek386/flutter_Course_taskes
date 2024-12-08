import '../models/answers.dart';
import '../models/questions.dart';

List<Questions> questions = [
  Questions(question: 'What is the capital of France?', answers: [
    Answers(text: 'Paris', isCorrect: true),
    Answers(text: 'London', isCorrect: false),
    Answers(text: 'Berlin', isCorrect: false),
    Answers(text: 'Madrid', isCorrect: false)
  ]),
  Questions(question: 'What is 2 + 2?', answers: [
    Answers(text: '3', isCorrect: false),
    Answers(text: '4', isCorrect: true),
    Answers(text: '5', isCorrect: false),
    Answers(text: '6', isCorrect: false)
  ]),
  Questions(question: 'Which planet is known as the Red Planet?', answers: [
    Answers(text: 'Earth', isCorrect: false),
    Answers(text: 'Mars', isCorrect: true),
    Answers(text: 'Jupiter', isCorrect: false),
    Answers(text: 'Saturn', isCorrect: false)
  ]),
  Questions(question: 'What is the largest ocean on Earth?', answers: [
    Answers(text: 'Atlantic Ocean', isCorrect: false),
    Answers(text: 'Indian Ocean', isCorrect: false),
    Answers(text: 'Arctic Ocean', isCorrect: false),
    Answers(text: 'Pacific Ocean', isCorrect: true)
  ]),
  Questions(question: 'What is the capital of Japan?', answers: [
    Answers(text: 'Beijing', isCorrect: false),
    Answers(text: 'Seoul', isCorrect: false),
    Answers(text: 'Tokyo', isCorrect: true),
    Answers(text: 'Bangkok', isCorrect: false)
  ]),
  Questions(question: 'What is the largest mammal in the world?', answers: [
    Answers(text: 'Elephant', isCorrect: false),
    Answers(text: 'Blue Whale', isCorrect: true),
    Answers(text: 'Giraffe', isCorrect: false),
    Answers(text: 'Hippopotamus', isCorrect: false)
  ]),
  Questions(question: 'What is the largest bird in the world?', answers: [
    Answers(text: 'Ostrich', isCorrect: false),
    Answers(text: 'Eagle', isCorrect: false),
    Answers(text: 'Albatross', isCorrect: false),
    Answers(text: 'Owl', isCorrect: true)
  ]),
  Questions(question: 'What is the smallest country in the world?', answers: [
    Answers(text: 'Monaco', isCorrect: false),
    Answers(text: 'Vatican City', isCorrect: true),
    Answers(text: 'San Marino', isCorrect: false),
    Answers(text: 'Nauru', isCorrect: false)
  ]),
  Questions(question: 'What is the largest country in the world?', answers: [
    Answers(text: 'Canada', isCorrect: false),
    Answers(text: 'China', isCorrect: false),
    Answers(text: 'Russia', isCorrect: true),
    Answers(text: 'United States', isCorrect: false)
  ]),
  Questions(question: 'What is the smallest ocean in the world?', answers: [
    Answers(text: 'Atlantic Ocean', isCorrect: false),
    Answers(text: 'Indian Ocean', isCorrect: false),
    Answers(text: 'Arctic Ocean', isCorrect: true)
  ]),
];
