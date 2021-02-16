import 'dart:io';
// Ubaidullaev Assylzhan id:26306

class Cuboid{
  int length;
  int width;
  int height;

  Cuboid(this.length, this.width, this.height);

  int get surfaceArea => 2*(this.length * this.width + this.width * this.height + this.length * this.height);
  int get volume => this.length * this.width * this.height;
}

void main(){
  print("Enter a length: ");
  var length = int.parse(stdin.readLineSync());
  print("Enter a width: ");
  var width = int.parse(stdin.readLineSync());
  print("Enter a height: ");
  var height = int.parse(stdin.readLineSync());

  print("============Task 1: ==============");
  var cuboid = Cuboid(length, width, height);
  print(cuboid.surfaceArea);
  print(cuboid.volume);

  print("============Task 2:============= ");
  var cube = Cube(length, length, length);
  cube.equal(length);
  print(cube.surfaceArea);
  print(cube.surfaceArea);
}


class Cube extends Cuboid{
  Cube(int length, int width, int height) : super(length, length, length);

  equal(int length){
    print("Length: ${this.length}");
    print("Width: ${this.width}");
    print("Height: ${this.height}");
  }
}
