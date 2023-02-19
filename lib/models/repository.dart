
import 'question_model.dart';


class Repository {

  List<Question> getQuestions() {
    
    List<Question> questions = [];
    
    questions.add(_question1);
    questions.add(_question2);
    questions.add(_question3);
    questions.add(_question4);

    return questions;
  }

  

  final _question1 = Question(title: 'What is the scientific name of a butterfly?', options: [
    Option(title: 'Apis', weight: 0),
    Option(title: 'Coleoptera', weight: 0),
    Option(title: 'Formicidae', weight: 0),
    Option(title: 'Rhopalocera', weight: 5),
  ]);

  final _question2 = Question(title: 'Who are the actors in The Internship?', options: [
    Option(title: 'Ben Stiller, Jonah Hill', weight: 0),
    Option(title: 'Courteney Cox, Matt LeBlanc', weight: 0),
    Option(title: 'Kaley Cuoco, Jim Parsons', weight: 0),
    Option(title: 'Vince Vaughn, Owen Wilson', weight: 5),
  ]);

  final _question3 = Question(title: 'What is the capital of Spain?', options: [
    Option(title: 'Berlin', weight: 0),
    Option(title: 'Buenos Aires', weight: 0),
    Option(title: 'Madrid', weight: 5),
    Option(title: 'San Juan', weight: 0),
  ]);

  final _question4 = Question(title: 'How far is the moon from Earth?', options: [
    Option(title: '7,918 miles (12,742 km)', weight: 0),
    Option(title: '86,881 miles (139,822 km)', weight: 0),
    Option(title: '238,400 miles (384,400 km)', weight: 5),
    Option(title: '35,980,000 miles (57,910,000 km))', weight: 0),
  ]);

}