void main() {
  print('hello world');
  //함수나 메소드 내부에 지역 변수를 선언할때 적합
  var name = 'minjae';

  //String
  //class 나 property를 선언할때는 타입을 명시
  String name2 = 'tomaot';

  //dynamic //권장 되지 않는 변수 타입 하지만 타입적으로 모호한 상태에서는 사용 가능
  // var param; // dynamic 자동 체크
  dynamic param;
  param = 'name';
  param = 12;
  param = bool;
  if (param is String) {}

  //null safety :
  String? param1 = 'minjae';
  param1 = null;
  param1?.isNotEmpty;

  final name3 = 'eee';
  // name3 = 'rrr'; // error
  print(name3);

  //final 이지만 Late로 바로 변수를 초기화 해주지 않아도 된다.
  //다른 동작 이후 변수를 초기화하면 그 이후는 변경되지 않는다.
  late final String name4;

  //compile time constant
  //컴파일 할때 알고 있는 값에 사용하는 것 컴파일 이후에는 값 변경이 안된다.
  const apikey = '123123';
  // const API = fetchApi(); <- 다른 동작을 하고 변수 세팅하는것은 final의 성격으로 가야한다.
}
