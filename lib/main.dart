import 'dart:math';

void main(List<String> args) {
  print('  ------------------- Task 1 -------------------');
  runTask1();
}

void runTask1() {
  //   Task 1: Списки (List)
  // Створіть список numbers зі 100 елементів. Кожен елемент — випадкове число від 0 до 100 (використайте Random().nextInt(101)).
  final numbers = List.generate(100, (index) => Random().nextInt(101));

  // Виведіть цей список на екран.
  print(numbers);
  print('  ------------------- Task 1.3 -------------------');

  // Виведіть на екран 65-й елемент списку у форматі: "65-й елемент: [значення]".
  print('65-й елемент: ${numbers[65]}');

  // Вставте число 1000000000 на 50-ту позицію списку.
  print('  ------------------- Task 1.4 -------------------');
  numbers.insert(50, 1000000000);
  print(numbers);

  // Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
  print('  ------------------- Task 1.5 -------------------');

  final toBeRemoved = [24, 45, 66, 88];

  for (var e in toBeRemoved) {
    numbers.remove(e);
  }
  print(numbers);

  // За допомогою циклу for переберіть список. Під час перебору:
  // Порахуйте суму всіх елементів, що діляться на 3 без залишку.
  // Виведіть результат.
  print('  ------------------- Task 1.6 -------------------');

  int sum = 0;
  for (var number = 0; number < numbers.length; number++) {
    if (number % 3 == 0) {
      sum += number;
    }
  }
  print('Cума чисел з масиву, що ділиться на 3 = $sum');

  // Створіть порожній список temp. За допомогою циклу for-in переберіть numbers. Додайте до temp лише ті елементи, що діляться на 2 без залишку.
  // Виведіть довжину списку temp.
  print('  ------------------- Task 1.7 -------------------');

  final temp = [];

  for (var number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  print('$temp \n');
}

