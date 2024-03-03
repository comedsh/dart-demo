/// 每一个实例变量都隐式的有一个 getter 和一个 setter；当然你可以可以通过 getter 和 setter 定义额外的实例变量
/// https://dart.cn/language/methods#getters-and-setters
/// 该实例通过 get/set 方法分别定义了 right 和 bottom 两个示例属性
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

void main() {
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);
}
