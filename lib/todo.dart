import "dart:io";



class Todo {
  int id;
  String? title;
  bool isDone;
  Todo({required this.id, required this.title}): isDone = false;
  String get status => isDone ? "выполнено" : "В процессе";

  @override
  String toString() {
    String mark = isDone ? "[x]" : "[]";
    return "$mark $id. $title ($status)";
  }


  void complete() {
    isDone = true;
  }

  
}