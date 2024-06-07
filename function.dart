String sayHello(String name) {
  return ("Hello $name nice to meet you");
}

String sayHello2(String name) => "hello $name";

//Name Parameter

String sayHello3(String name, int age, String country) {
  return "hello $name, youare $age , and you from $country";
}

//default Parameter Setting
String sayHello4({
  String name = 'anon',
  age = 99,
  country = 'north',
}) {
  return "hello $name, youare $age , and you from $country";
}

//set Required
String sayHello5({
  required String name,
  required int age,
  required String country,
}) {
  return "hello $name, youare $age , and you from $country";
}

//optional Positional Parameters
//Positional => 순서 맞추기 (좋지 않은 방법 )
//Optional Param String? Country
String SayHello6(String name, int age, [String? country = 'korea']) =>
    '$name, $age, $country';

// ??
String capitalizeNAme(String name) => name.toUpperCase();
// capitalizeName1 ==  capitalizeName2 == capitalizeName3
String capitalizeNAme1(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return "ANON";
}

String capitalizeNAme2(String? name) =>
    name != null ? name.toUpperCase() : "ANON";
String capitalizeNAme3(String? name) =>
    name?.toUpperCase() ?? "ANON"; //좌항이 null 이면 우항을 리턴

//?=
// main 변수로 설정

/////TypeDef
///
typedef ListOfInts = List<int>;
List<int> reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}

ListOfInts reverseListOfNumbers2(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

String sayHi(Map<String, String> userInfo) {
  return "${userInfo['name']}";
}

typedef UserInfo = Map<String, String>;
String sayHi2(UserInfo userInfo) {
  return "${userInfo['name']}";
}

void main() {
  print(sayHello("minjae"));
  print(sayHello3("minjae", 35, "korea"));
  print(sayHello4(
    age: 12,
    name: "mainjae",
    country: "korea",
  ));
  //make Required Error
  // print(sayHello5(name: name, age: 1));
  capitalizeNAme('minjae');
  capitalizeNAme1(null);
  String? name;
  name ??= "minjae"; //name이 null value 이면 minjae를 할당해줘
}
