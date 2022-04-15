void main() {
  var num = 19;

  if (num > 5) {
    print("num 5'ten büyüktür."); // num 5'ten büyük olduğu için burası çalışır.
  } else {
    print("num 5'ten büyük değildir.");
  }

  if (num == 1919) {
    print("num = 1919");
  } else if (num == 5) {
    print("num = 5");
  } else if (num == 19) {
    //bu blok çalışacaktır.
    print("num = 19");
  } else {
    print("num 1919, 5 veya 19 sayılarından birine eşit değildir.");
  }
}
