int sumFromOneTo(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

int betterSumFromOneTo(int n) {
  return n * (n + 1) ~/ 2;
}

final scores = {
  'Eric': 9,
  'Mark': 12,
  'Wayne': 1,
};

final myList = [1, 2, 2, 3, 4];

final mySet = <int>{};

void checkDub() {
  for (final item in myList) {
    if (mySet.contains(item)) {
      print('has dup');
    }
    mySet.add(item);
  }
}

final mySets = <int>{};
int removeDuplicates(List<int> nums) {
  int no_dups = 0;
  for (final item in nums) {
    if (mySets.contains(item)) {
      no_dups++;
    }
    mySets.add(item);
  }
  List newList = mySets.toList();
  print(newList);

  return newList.length;
}
