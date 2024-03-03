/// Instance variables, 注意 Point0 没有构造函数；
class Point0 {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
  double z = 0; // // Declare z, initially 0.
}

/// 1. 构造函数的写法，注意参数必须是 this 的形式
/// 2. final 类型的变量可以在构造函数中进行初始化，比如 m
/// 3. 使用 factor 构造器进行初始化，比如该示例中的 fromJson factory 函数
class Point1 {
  double? x;
  double? y;
  double z = 0;
  final double m;  // final 修饰的变量可以在构造函数中进行初始化

  /// 注意通过构造函数的方式，参数形式务必写成 this.x 的方式，否则不能赋值。
  Point1({
    this.x, // Declare instance variable x, initially null.
    this.y, // Declare y, initially null.
    this.z = 0, // // Declare z, initially 0.
    this.m = 1
  });

  factory Point1.fromJson(Map<String, int> json) => 
    Point1(
      x: json["x"]?.toDouble(), 
      y: json["y"]?.toDouble(), 
      z: json["z"]!.toDouble(),
      m: json["m"]!.toDouble(),
    ); 
}

void main() {
  /// 对没有构造函数的实例的实例变量进行初始化
  var point0 = Point0();
  point0.x = 4; // Use the setter method for x.
  assert(point0.x == 4); // Use the getter method for x.
  assert(point0.y == null); // Values default to null.


  /// 使用 Point1 的构造器进行初始化
  var point1 = Point1(x:1, y:2, z:3, m:4);
  
  print('${point1.x}, point.x type: ${point1.x.runtimeType}');  // runtimeType 获取该变量在 runtime 时刻的类型

  assert(point1.x == 1); // Use the getter method for x.
  assert(point1.y == 2); // Values default to null.
  assert(point1.z == 3);
  assert(point1.m == 4);

  var json = {'x': 1, 'y': 2, 'z': 3, 'm': 4};
  point1 = Point1.fromJson(json);
  print(point1.x);
  assert(point1.x == 1); // Use the getter method for x.
  assert(point1.y == 2); // Values default to null.
  assert(point1.z == 3);
  assert(point1.m == 4);
}
