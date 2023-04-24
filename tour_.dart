class Car {
  String name;
  int age;

  Car(this.name, this.age);
}

void main() {
  //printing-to-the-console控制台打印
  var car1 = Car('golf', 18);
  print(car1.name);
  var bianliang = 'tea';
  print('I drink $bianliang.');

//numbers
  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);
  print('成功');

  assert(num.parse('42') is int);
  assert(num.parse('0x42') is int);
  assert(num.parse('0.50') is double);
  print(2);
  //assert(num.parse('hello') is int);
  assert(int.parse('42', radix: 16) == 66);
  print(3);

  //Convert an int to a string
  assert(42.toString() == '42');
  //Convert a double to a string.
  assert(123.456.toString() == '123.456');
  //Specify the number of digits after the decimal
  assert(123.456.toStringAsFixed(2) == '123.46');
  //Specify the number of significant figures.
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);
  print(4);

  //strings-and-regular-expressions字符和正则表达式
  //Check whether a sring contains another string.
  assert('Never odd or even'.contains('odd'));
  //Does a string start with another string?
  assert('Never odd or even'.endsWith('even'));
  //Find the location of a string inside a string.
  assert('Never odd or even'.indexOf('odd') == 6);
  print(5);
  //从字符串中提取数据
  //Grab a substring.
 assert('Never odd or even'.substring(6, 9) == 'odd');
  //Split a string using a string pattern.
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0]=='progressive');
  //Get a UTF-16 code ynit (as a string) by index.
  assert('Never odd or even'[0]=='N');
  //USe split() with an empty string parameter to get 
  //a list of all characters (as Strings);good for
  //iterating.
  for(final char in 'hello'.split('')){
    print(char);
  }
//Get all the UTF-16 code units in the string.
var codeUnitList='Never odd or even'.codeUnits.toList();
assert(codeUnitList[0]==78);

}
