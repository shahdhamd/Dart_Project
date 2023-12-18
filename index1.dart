void reverseList(List<int> numbers) {
 
  List<int> reversedList = numbers.reversed.toList();

 
  print('Original List: $numbers');
  print('Reversed List: $reversedList');
}

void main() {

  List<int> numbers = [1, 2, 3, 4, 5];
  reverseList(numbers);
}
