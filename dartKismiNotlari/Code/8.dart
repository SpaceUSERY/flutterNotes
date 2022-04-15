void main() {
  for (var i = 0; i <= 10; i++) {
    print("i = $i");
  }

  List list = ["emre", "yazıcı", "android", "flutter", "dart"];

  for (String a in list) {
    print("$a");
  }

  for (int i = 0; i < list.length; i++) {
    print("list item = " + list[i]);
  }
}
