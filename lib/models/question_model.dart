
class Question {
  
  String title;
  List<Option> options;

  Question({required this.title, required this.options});

}

class Option {

  String title;
  int weight;

  Option({required this.title, required this.weight});
}