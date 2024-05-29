void main() {
  String name = "minjae";
  bool alive = true;
  int age = 12;
  double money = 69.99;
  //num은 int double 의 부모 클래스
  num x = 12;
  x = 1.1;

  var givemeFive = true;
  //List And Collection If
  var numbers = [1, 2, 3, 4, if (givemeFive) 5];
  numbers.add(1);

  //String interpolation
  var name1 = 'minjae';
  var age1 = 10;
  var greeting = 'hello my name is $name1, nice to meet you I\'m ${age + 2}';

  //collection For
  var oldFriends = ['minjae', ' peter'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "$friend",
  ];

  //Maps
  var player = {
    'name': 'minjae',
    'xp': 19.99,
    'superPower': false,
  };
  Map<List<int>, bool> player2 = {
    [1, 2, 3, 4]: true,
  };

  //Set
  Set<int> numbers1 = {1, 2, 3, 4};
  numbers1.add(1);
  numbers1.add(1);
  numbers1.add(1);
}
