class Player {
  final String name = 'minjae';
  int xp = 1500;

  void hello() {
    print('$name');
  }
}

//constructor
class Player2 {
  late final String name;
  late int xp;

  Player2(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }

  void hello() {
    print('hi $name');
  }
}

//improve
class Player3 {
  late final String name;
  late int xp;

  Player3(this.name, this.xp);

  void hello() {
    print('hi $name');
  }
}

//named Constructor
class Player4 {
  final String name;
  String team;
  int age;

  Player4({
    required this.name,
    required this.team,
    required this.age,
  });

  Player4.createBluePlaer({required String team, required int age})
      : this.team = team,
        this.age = age,
        this.name = 'minjae';
}

class Player5 {
  final String name;
  int xp;
  String team;

  Player5.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void helloss() {
    print("$name , $team, $xp");
  }
}

class Player6 {
  String name;
  int xp;
  Team team;

  Player6({required this.name, required this.xp, required this.team});
}

//enum
enum Team { red, blue }

//abstractMethod
abstract class Human {
  void walk();
}

class Robot {
  final String name;
  Robot(this.name);
  void sayHello() {
    print("hi myname $name");
  }
}

class chidRobot extends Robot {
  final Team team;

  chidRobot({required this.team, required String name}) : super(name);
}

// mixins
//생성자가 없는 클래스
mixin Strong {
  final double strengthLevel = 1500.99;
}

mixin QuickRunner {
  void runQuick() {
    print("runnnnnn");
  }
}

class Tall {
  final double height = 1.99;
}

class Player8 with Strong, QuickRunner {
  final Team team;

  Player8({required this.team});
}

void main() {
  var palyer = new Player2("minjae", 1500);
  palyer.hello();

  var palyer3 = new Player3("minjae", 1500);
  palyer3.hello();

  // palyer.name = 'minjae2'; // error

  var player4 = new Player4(name: "minjae", age: 12, team: "blue");

  var palyer5 = new Player4.createBluePlaer(team: "blue", age: 11);

  var apiData = [
    {
      "name": "minjae",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "minjae",
      "team": "red",
      "xp": 0,
    }
  ];

  apiData.forEach((playerJson) {
    var player6 = Player5.fromJson(playerJson);
    player6.helloss();
  });

//cascadeOperator
  var minjae = Player6(name: 'minjae', xp: 1, team: Team.blue)
    ..name = 'change'
    ..xp = 12
    ..team = Team.red;
}
