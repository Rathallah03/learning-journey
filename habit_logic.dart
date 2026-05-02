class Habit {
  String name;
  bool isDone;

  Habit(this.name, {this.isDone = false});
}

class Todo {
  String title;
  bool isDone;

  Todo(this.title, {this.isDone = false});
}

List<Habit> habitList = [];
List<Todo> todoList = [];
int air = 0;

void tambahHabit(String nama) {
  habitList.add(Habit(nama));
}

void checkHabit(int index) {
  if (!habitList[index].isDone) {
    habitList[index].isDone = true;
    tambahAir();
  }
}

void tambahTodo(String title) {
  todoList.add(Todo(title));
}

void checkTodo(int index) {
  if (!todoList[index].isDone) {
    todoList[index].isDone = true;
    tambahAir();
  }
}

void tambahAir() {
  air++;
}
