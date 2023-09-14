import 'dart:ffi';

import '../model/Question_Model.dart';

List<QuestionModel> questions1 = [

  QuestionModel(

    question: "How Many Whiskers does the average cat have on each side of its face ?",
   answer:  {
      "1": false,
      "3": false,
      "12": true,
      "5,007": false,
    },
  ),
  QuestionModel(
    question:   "When does a cat purr ?",
      answer: {
    "When it cares for its kittens": false,
    "When it needs confort": false,
    "When it feels content": false,
    "All of the above": true,
  }),
  QuestionModel(

     question:  "What is the averge nulber of kittens in a litter ?",
     answer:  {
    "1 to 2": false,
    "3 to 5": true,
    "8 to 10": false,
    "12 to 14": false,
  }),
  QuestionModel(
    question:   "How many moons does Mars have ?",
     answer:  {
    "1": false,
    "2": false,
    "4": true,
    "8": false,
  }),
  QuestionModel(
     question:  "What is Mars's nickname ?",
     answer:  {
    "The red planet": true,
    "The dusty planet": false,
    "The hot planet": false,
    "The smelly planet": false,
  }),
  QuestionModel(
  question:     "About How long would it take to travel to Mars ?",
    answer:   {
    "Three days": false,
    "A month": false,
    "Eight months": true,
    "Two years": false,
  }),
  QuestionModel(
    question:   "Mars is Named after the Roman god Mars. What is he the god of ?",
    answer:   {
    "Fire": false,
    "Love": false,
    "Agriculture": false,
    "War": true,
  }),
  QuestionModel(
    question:   "Mars Is the ___ planet from the sun ?",
  answer:     {

    "Secon": false,
    "Third": false,
    "Fourth": true,
    "Sixth": false,
  }),
  QuestionModel(
    question:   "Where did Orville and Wilbur Wright build their first flying airplane ?",
   answer:    {
        "Paris, France": false,
        "Boston, Massachusetts": false,
        "Kitty Hawk, North Carolina": true,
        "Tokyou, Japan": false,
      }),
  QuestionModel(
    question:   "The First astronuts to travel to space came from which country ?",

    answer:   {
    "United States": false,
    "Soviet Union (now Russia)": true,
    "China": false,
    "Rocketonia": false,
  }),
];
List<QuestionModel> questions2= [
  QuestionModel(
    question: "What is the capital of France?",
    answer: {
      "Paris": true,
      "London": false,
      "Berlin": false,
      "Rome": false,
    },
  ),
  QuestionModel(
    question: "Who painted the Mona Lisa?",
    answer: {
      "Leonardo da Vinci": true,
      "Pablo Picasso": false,
      "Vincent van Gogh": false,
      "Michelangelo": false,
    },
  ),
  QuestionModel(
    question: "What is the largest planet in our solar system?",
    answer: {
      "Jupiter": true,
      "Saturn": false,
      "Mars": false,
      "Earth": false,
    },
  ),
  QuestionModel(
    question: "Who wrote the play 'Romeo and Juliet'?",
    answer: {
      "William Shakespeare": true,
      "Jane Austen": false,
      "Charles Dickens": false,
      "Mark Twain": false,
    },
  ),
  QuestionModel(
    question: "What is the chemical symbol for gold?",
    answer: {
      "Au": true,
      "Ag": false,
      "Cu": false,
      "Fe": false,
    },
  ),
  QuestionModel(
    question: "Which country is known as the 'Land of the Rising Sun'?",
    answer: {
      "Japan": true,
      "China": false,
      "South Korea": false,
      "Thailand": false,
    },
  ),
  QuestionModel(
    question: "Who is the author of the Harry Potter book series?",
    answer: {
      "J.K. Rowling": true,
      "Stephen King": false,
      "George R.R. Martin": false,
      "Dan Brown": false,
    },
  ),
  QuestionModel(
    question: "What is the tallest mountain in the world?",
    answer: {
      "Mount Everest": true,
      "K2": false,
      "Kilimanjaro": false,
      "Matterhorn": false,
    },
  ),
  QuestionModel(
    question: "Which planet is known as the 'Red Planet'?",
    answer: {
      "Mars": true,
      "Venus": false,
      "Mercury": false,
      "Neptune": false,
    },
  ),
  QuestionModel(
    question: "Who is the founder of Microsoft?",
    answer: {
      "Bill Gates": true,
      "Steve Jobs": false,
      "Mark Zuckerberg": false,
      "Larry Page": false,
    },
  ),
];
List<QuestionModel> questions3 = [
  QuestionModel(
    question: "What is the capital city of Germany?",
    answer: {
      "Berlin": true,
      "Paris": false,
      "London": false,
      "Rome": false,
    },
  ),
  QuestionModel(
    question: "Who painted the famous artwork 'The Starry Night'?",
    answer: {
      "Vincent van Gogh": true,
      "Leonardo da Vinci": false,
      "Pablo Picasso": false,
      "Michelangelo": false,
    },
  ),
  QuestionModel(
    question: "What is the largest ocean in the world?",
    answer: {
      "Pacific Ocean": true,
      "Atlantic Ocean": false,
      "Indian Ocean": false,
      "Arctic Ocean": false,
    },
  ),
  QuestionModel(
    question: "Who wrote the novel 'Pride and Prejudice'?",
    answer: {
      "Jane Austen": true,
      "William Shakespeare": false,
      "Charles Dickens": false,
      "Mark Twain": false,
    },
  ),
  QuestionModel(
    question: "What is the chemical symbol for silver?",
    answer: {
      "Ag": true,
      "Au": false,
      "Cu": false,
      "Fe": false,
    },
  ),
  QuestionModel(
    question: "Which country is known for the Taj Mahal?",
    answer: {
      "India": true,
      "China": false,
      "Brazil": false,
      "Australia": false,
    },
  ),
  QuestionModel(
    question: "Who is the author of the 'Harry Potter' book series?",
    answer: {
      "J.K. Rowling": true,
      "Stephen King": false,
      "George Orwell": false,
      "Agatha Christie": false,
    },
  ),
  QuestionModel(
    question: "What is the tallest mountain in Africa?",
    answer: {
      "Mount Kilimanjaro": true,
      "Mount Everest": false,
      "Mount Fuji": false,
      "Mount McKinley": false,
    },
  ),
  QuestionModel(
    question: "Who invented the theory of relativity?",
    answer: {
      "Albert Einstein": true,
      "Isaac Newton": false,
      "Galileo Galilei": false,
      "Nikola Tesla": false,
    },
  ),
  QuestionModel(
    question: "What is the largest desert in the world?",
    answer: {
      "Sahara Desert": true,
      "Gobi Desert": false,
      "Atacama Desert": false,
      "Antarctic Desert": false,
    },
  ),
];





//////////////////////////////////
Map <String,dynamic> questionsData={
  "levels":
  [
   {
      "Score": 0,

    },

    {
      "Score": 0 ,

    },
    {
      "Score":0 ,

    },
    {
      "Score":0 ,

    }
  ]
};