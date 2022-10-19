class Stack<E> {
  Stack() : _storage = <E>[];
  Stack.of(Iterable<E> elements) : _storage = List.of(elements);

  final List<E> _storage;

  void push(element) => _storage.add(element);
  E pop() => _storage.removeLast();

  get peak => _storage.first;

  get isEmpty => _storage.isEmpty;
  get isNotEmpty => !isEmpty;

  @override
  String toString() {
    return _storage.reversed.join('');
  }
}

void movedFromMain() {
  //Q1: Reverse this list
  const list = [
    'T',
    'H',
    'I',
    'S',
    ' ',
    'I',
    'S',
    ' ',
    'A',
    ' ',
    'L',
    'I',
    'S',
    'T'
  ];

  //Q2: Check if string has balanced parenthesis
  const balancedString = 'h((e))llo(world)()';
  final String unbalancedString = '(hello world';

  bool checkIfBalanced(String elements) {
    final stack = Stack<int>();

    final openBracket = '('.codeUnitAt(0);
    final closeBracket = ')'.codeUnitAt(0);

    for (int codeUnit in elements.codeUnits) {
      if (codeUnit == openBracket) {
        stack.push(codeUnit);
      } else if (codeUnit == closeBracket) {
        if (stack.isEmpty) {
          return false;
        } else {}
      }
    }
    print(stack);
    return stack.isEmpty;
  }

  print(checkIfBalanced(balancedString));

  // Solution Q1
  void printInReverse<E>(List<E> elements) {
    var stack = Stack<E>();

    for (E value in elements) {
      stack.push(value);
    }

    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

  printInReverse(list);
}
