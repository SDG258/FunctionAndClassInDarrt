import 'dart:ffi';
import 'dart:io';

import 'dart_class_student.dart';

void main() {
  print('1. Hello name');
  print('2. Is Prime');
  print('3. Infor student');
  var chooese = stdin.readLineSync();
  switch (chooese) {
    //Function
    case '1':
      print('Tên của bạn là gì?');
      var name = stdin.readLineSync();
      Hello(name);
      break;
    case '2':
      print('Kiểm tra số nguyên tố');
      int number = int.parse(stdin.readLineSync()!);
      if (isPrime(number)) {
        print('$number là số nguyên tố');
      } else {
        print('$number không là số nguyên tố');
      }
      break;
    // Class
    case '3':
      print('Info student');
      var student = Student();
      print('Input ID');
      student.id = int.parse(stdin.readLineSync()!);
      print('Input Name');
      student.name = stdin.readLineSync()!;
      print('ID: ${student.id}');
      print('Name: ${student.name}');

      student.study();
      student.sleep();

      break;
    default:
      print('Hello word');
  }
}

void Hello(var name) {
  print('Xin chào $name!\nChào mừng $name đã trở lại');
}

bool isPrime(var number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i < number - 1; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
