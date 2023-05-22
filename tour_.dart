
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
  assert(parts[0] == 'progressive');
  //Get a UTF-16 code ynit (as a string) by index.
  assert('Never odd or even'[0] == 'N');
  //USe split() with an empty string parameter to get
  //a list of all characters (as Strings);good for
  //iterating.
  for (final char in 'hello'.split('')) {
    print(char);
  }
//Get all the UTF-16 code units in the string.
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);
//Convert to uppercase.
  assert('web apps'.toUpperCase() == 'WEB APPS');
//Convert to lowercase.
  assert('WEB APPS'.toLowerCase() == 'web apps');
  //Trimming 和空字符串
  //Trim a string.
  assert('  hello  '.trim() == 'hello');
  //Check whether a string is empty.
  assert(''.isEmpty);
  //Strings with only white space are not empty.
  assert('   '.isNotEmpty);
  //替换部分字符串
  var greetingTemplate = 'Hello,NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
  //greetingTemplate didn't change.
  assert(greeting != greetingTemplate);

  //构建一个字符串
 var sb = StringBuffer();
sb
  ..write('Use a StringBuffer for ')
  ..writeAll(['efficient', 'string', 'creation'], ' ')
  ..write('.');
var fullString = sb.toString();
assert(fullString == 'Use a StringBuffer for efficient string creation.');

//正则表达式
// Here's a regular expression for one or more digits.
var numbers=RegExp(r'\d+');
var allCharacters ='llamas live fifteen to twenty years';
var someDigits='llamas live 15 to 20 years';
assert(!allCharacters.contains(numbers));
assert(someDigits.contains(numbers));
var exedOut = someDigits.replaceAll(numbers, 'XX');
assert(exedOut == 'llamas live XX to XX years');
var numbers1 = RegExp(r'\d+');
var someDigits1 = 'llamas live 15 to 20 years';

// Check whether the reg exp has a match in a string.
assert(numbers.hasMatch(someDigits));

// Loop through all matches.
for (final match in numbers.allMatches(someDigits)) {
  print(match.group(0)); // 15, then 20
}
//Lists
// Create an empty list of strings.
var grains = <String>[];
assert(grains.isEmpty);

// Create a list using a list literal.
var fruits = ['apples', 'oranges'];

// Add to a list.
fruits.add('kiwis');

// Add multiple items to a list.
fruits.addAll(['grapes', 'bananas']);

// Get the list length.
assert(fruits.length == 5);

// Remove a single item.
var appleIndex = fruits.indexOf('apples');
fruits.removeAt(appleIndex);
assert(fruits.length == 4);

// Remove all elements from a list.
fruits.clear();
assert(fruits.isEmpty);

// You can also create a List using one of the constructors.
var vegetables = List.filled(99, 'broccoli');
assert(vegetables.every((v) => v == 'broccoli'));
var fruits1 = ['apples', 'oranges'];

// Access a list item by index.
assert(fruits1[0] == 'apples');

// Find an item in a list.
assert(fruits1.indexOf('apples') == 0);
var fruits2 = ['bananas', 'apples', 'oranges'];

// Sort a list.
fruits2.sort((a, b) => a.compareTo(b));
assert(fruits2[0] == 'apples');
// This list should contain only strings.
var fruits3 = <String>[];

fruits3.add('apples');
var fruit3 = fruits3[0];
assert(fruit3 is String);

//Sets
// Create an empty set of strings.
var ingredients = <String>{};

// Add new items to it.
ingredients.addAll(['gold', 'titanium', 'xenon']);
assert(ingredients.length == 3);

// Adding a duplicate item has no effect.
ingredients.add('gold');
assert(ingredients.length == 3);

// Remove an item from a set.
ingredients.remove('gold');
assert(ingredients.length == 2);

// You can also create sets using
// one of the constructors.
var atomicNumbers = Set.from([79, 22, 54]);

var ingredients1 = Set<String>();
ingredients1.addAll(['gold', 'titanium', 'xenon']);

// Check whether an item is in the set.
assert(ingredients.contains('titanium'));

// Check whether all the items are in the set.
assert(ingredients.containsAll(['titanium', 'xenon']));

var ingredients2 = Set<String>();
ingredients2.addAll(['gold', 'titanium', 'xenon']);

// Create the intersection of two sets.
var nobleGases = Set.from(['xenon', 'argon']);
var intersection = ingredients.intersection(nobleGases);
assert(intersection.length == 1);
assert(intersection.contains('xenon'));

//Maps
// Maps often use strings as keys.
var hawaiianBeaches = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
};

// Maps can be built from a constructor.
var searchTerms = Map();

// Maps are parameterized types; you can specify what
// types the key and value should be.
var nobleGases1 = Map<int, String>();

var nobleGases2 = {54: 'xenon'};

// Retrieve a value with a key.
assert(nobleGases2[54] == 'xenon');

// Check whether a map contains a key.
assert(nobleGases2.containsKey(54));

// Remove a key and its value.
nobleGases.remove(54);
assert(nobleGases2.containsKey(54));

var hawaiianBeaches2 = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
};

// Get all the keys as an unordered collection
// (an Iterable).
var keys = hawaiianBeaches.keys;

assert(keys.length == 3);
assert(Set.from(keys).contains('Oahu'));

// Get all the values as an unordered collection
// (an Iterable of Lists).
var values = hawaiianBeaches2.values;
assert(values.length == 3);
assert(values.any((v) => v.contains('Waikiki')));


assert(hawaiianBeaches2.containsKey('Oahu'));
assert(!hawaiianBeaches2.containsKey('Florida'));

var teamAssignments = <String, String>{};
assert(teamAssignments['Catcher'] == null);

var coffees = <String>[];
var teas = ['green', 'black', 'chamomile', 'earl grey'];
assert(coffees.isEmpty);
assert(teas.isNotEmpty);

var teas1 = ['green', 'black', 'chamomile', 'earl grey'];
teas1.forEach((tea) => print('I drink $tea'));

hawaiianBeaches.forEach((k, v) {
  print('I want to visit $k and swim at $v');
  // I want to visit Oahu and swim at
  // [Waikiki, Kailua, Waimanalo], etc.
});


var loudTeas = teas1.map((tea) => tea.toUpperCase());
loudTeas.forEach(print);

var loudTeas1 = teas1.map((tea) => tea.toUpperCase()).toList();


// Chamomile is not caffeinated.
bool isDecaffeinated(String teaName) => teaName == 'chamomile';

// Use where() to find only the items that return true
// from the provided function.
var decaffeinatedTeas2 = teas1.where((tea) => isDecaffeinated(tea));
// or teas.where(isDecaffeinated)

// Use any() to check whether at least one item in the
// collection satisfies a condition.
assert(teas.any(isDecaffeinated));

// Use every() to check whether all the items in a
// collection satisfy a condition.
assert(!teas.every(isDecaffeinated));

var uri = 'https://example.org/api?foo=some message';

var encoded = Uri.encodeFull(uri);
assert(encoded == 'https://example.org/api?foo=some%20message');

var decoded = Uri.decodeFull(encoded);
assert(uri == decoded);

var uri3 = 'https://example.org/api?foo=some message';

var encoded1 = Uri.encodeComponent(uri3);
assert(
    encoded1 == 'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');

var decoded2 = Uri.decodeComponent(encoded);
assert(uri3 == decoded2);

//解析URl
var uri1 = Uri.parse('https://example.org:8080/foo/bar#frag');

assert(uri1.scheme == 'https');
assert(uri1.host == 'example.org');
assert(uri1.path == '/foo/bar');
assert(uri1.fragment == 'frag');
assert(uri1.origin == 'https://example.org:8080');

var uri2 = Uri(
    scheme: 'https',
    host: 'example.org',
    path: '/foo/bar',
    fragment: 'frag',
    queryParameters: {'lang': 'dart'});
assert(uri2.toString() == 'https://example.org/foo/bar?lang=dart#frag');

var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
var httpsUri = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});

assert(httpUri.toString() == 'http://example.org/foo/bar?lang=dart');
assert(httpsUri.toString() == 'https://example.org/foo/bar?lang=dart');

// Get the current date and time.
var now = DateTime.now();

// Create a new DateTime with the local time zone.
var y2k = DateTime(2000); // January 1, 2000

// Specify the month and day.
y2k = DateTime(2000, 1, 2); // January 2, 2000

// Specify the date as a UTC time.
y2k = DateTime.utc(2000); // 1/1/2000, UTC

// Specify a date and time in ms since the Unix epoch.
y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);

// Parse an ISO 8601 date in the UTC time zone.
y2k = DateTime.parse('2000-01-01T00:00:00Z');

// Create a new DateTime from an existing one, adjusting just some properties:
var sameTimeLastYear = now.copyWith(year: now.year - 1);

// 1/1/2000, UTC
var y2k1 = DateTime.utc(2000);
assert(y2k1.millisecondsSinceEpoch == 946684800000);

// 1/1/1970, UTC
var unixEpoch = DateTime.utc(1970);
assert(unixEpoch.millisecondsSinceEpoch == 0);


// Add one year.
var y2001 = y2k1.add(const Duration(days: 366));
assert(y2001.year == 2001);

// Subtract 30 days.
var december2000 = y2001.subtract(const Duration(days: 30));
assert(december2000.year == 2000);
assert(december2000.month == 12);

// Calculate the difference between two dates.
// Returns a Duration object.
var duration = y2001.difference(y2k);
assert(duration.inDays == 366); // y2k was a leap year.


}
