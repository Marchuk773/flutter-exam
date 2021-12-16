import 'dart:collection';
import 'dart:math';

class Logic {
  HashSet<int> specialCards = HashSet();
  bool checkRemainingElements(int count) {
    return specialCards.length == count;
  }

  void generateNewSpecialElement(int count) {
    var random = Random();
    var number;
    do {
      number = random.nextInt(count);
    } while (specialCards.contains(number));
    currentIndex = number;
  }

  bool checkElement(int index) {
    return index == currentIndex;
  }

  var currentIndex;
}
