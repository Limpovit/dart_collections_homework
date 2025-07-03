import 'dart:math';

import 'package:dart_collections_homework/names.dart';
import 'package:word_generator/word_generator.dart';

void main(List<String> args) {
  print('  ------------------- Task 1 -------------------');
  runTask1();

  print('  ------------------- Task 2 -------------------');
  runTask2();

  print('  ------------------- Task 2 -------------------');
  runTask3();
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
    if (numbers[number] % 3 == 0) {
      sum += numbers[number];
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

void runTask2() {
  // Task 2: Множини (Set)
  // Створіть окремий файл names.dart.
  // У цьому файлі створіть дві змінні:
  // List<String> ukrainianNames1
  // List<String> ukrainianNames2
  // За допомогою ChatGPT згенеруйте список із 50 українських імен та збережіть його в ukrainianNames1.
  // За допомогою DeepSeek згенеруйте інший список із 50 українських імен для ukrainianNames2.
  // Поверніться до основного файлу з домашнім завданням (lib/main.dart).
  // Створіть Set uniqueNames1 і додайте до нього всі імена з ukrainianNames1.
  // Створіть Set uniqueNames2 і додайте до нього всі імена з ukrainianNames2.
  final uniqueNames1 = Set.from(ukrainianNames1);
  final uniqueNames2 = {...ukrainianNames2};

  // Створіть новий Set зі спільними іменами обох списків. Виведіть кількість елементів у цій множині.
  final intersection = uniqueNames1.intersection(uniqueNames2);
  print('Cпільні імена: $intersection');
  print('Кількість спільних імен: ${intersection.length}');
  // Створіть множину з іменами, що є в uniqueNames1, але яких немає в uniqueNames2. Виведіть ці імена.
  final difference = uniqueNames1.difference(uniqueNames2);
  print('Є в uniqueNames1, але яких немає в uniqueNames2: $difference');
  print('Кількість різних імен: ${difference.length}');
  // Створіть множину з іменами, що є в uniqueNames2, але яких немає в uniqueNames1. Виведіть ці імена.
  final difference2 = uniqueNames2.difference(uniqueNames1);
  print('Є в uniqueNames2, але яких немає в uniqueNames1: $difference2');
  print('Кількість різних імен: ${difference2.length}');
}

void runTask3() {
  //   Task 3: Словники (Map)
  // Підключіть до проєкту пакет word_generator (див. https://pub.dev/packages/word_generator).
  // Створіть список nounsList із 50 випадкових слів (як це зробити, дивіться в документації: https://pub.dev/packages/word_generator#randomnouns).
  // Із nounsList створіть Map<String, int> nounsMap, де:
  // ключ — слово;
  // значення — кількість символів у цьому слові.
  // Створіть нову змінну Map<String, int> tempNouns.
  // Додайте у tempNouns лише ті пари зі nounsMap, де довжина слова — парне число.
  // Виведіть всі ключі зі tempNouns.

  final wordGenerator = WordGenerator();
  List<String> nouns = wordGenerator.randomNouns(50);

  final Map<String, int> nounsMap = {};

  for (var noun in nouns) {
    nounsMap[noun] = noun.length;
  }

  print('Map with nouns: $nounsMap');

  final tempNouns = Map.fromEntries(
    nounsMap.entries.where((entry) => entry.value % 2 == 0),
  );
  print('Keys with even numbers: ${tempNouns.keys.join(', ')}');
}
