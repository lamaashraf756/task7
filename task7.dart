

class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
  }
}



class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  Student.guest()
      : name = "Guest User",
        age = 18,
        grade = 75.0;

  void showInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: $grade");
  }
}



class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Invalid balance");
    }
  }
}



class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("$name says: Woof!");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("$name says: Meow!");
  }
}



class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary)
      : super(name, age);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}



class Book {
  String title;
  String author;

  Book(this.title, this.author);
}

class BorrowedBook extends Book {
  bool _isBorrowed = false;

  BorrowedBook(String title, String author)
      : super(title, author);

  void borrowBook() {
    if (_isBorrowed) {
      print("This book is already borrowed.");
    } else {
      _isBorrowed = true;
      print("Book borrowed successfully.");
    }
  }

  void returnBook() {
    if (!_isBorrowed) {
      print("This book is already available.");
    } else {
      _isBorrowed = false;
      print("Book returned successfully.");
    }
  }

  void getStatus() {
    print(
        "Current Status: ${_isBorrowed ? "Borrowed" : "Available"}");
  }
}



void main() {
 
  Car car = Car("BMW", "X5", 2024);
  car.displayInfo();


  Student s1 = Student("Lama", 20, 96.5);
  Student s2 = Student.guest();

  s1.showInfo();

  print("");

  s2.showInfo();


  BankAccount account = BankAccount();

  account.balance = 1800;
  print("Balance: ${account.balance}");

  account.balance = -500;

  print("Balance: ${account.balance}");


  Dog dog = Dog("Max");
  Cat cat = Cat("Kitty");

  dog.makeSound();
  cat.makeSound();


  Employee employee = Employee(
    "Omar",
    30,
    15000,
  );

  employee.displayInfo();


  BorrowedBook book = BorrowedBook(
    "The Alchemist",
    "Paulo Coelho",
  );

  print("Book: ${book.title}");
  print("Author: ${book.author}");

  book.borrowBook();
  book.borrowBook();

  book.returnBook();

  book.getStatus();
}