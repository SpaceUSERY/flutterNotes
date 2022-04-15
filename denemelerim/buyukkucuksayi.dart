void main(List<String> args) {
  // print("Büyük olan sayı:" + buyukSayi(99, 81).toString());

  print("Küçük olan sayı: " + kucukSayi(29, 17).toString());
}
/*
int buyukSayi(int s1, int s2) {
  if (s1 > s2) {
    return s1;
  } else {
    return s2;
  }
}
*/

/*
int kucukSayi(int s1, int s2) {
  if (s1 < s2) {
    return s1;
  } else {
    return s2;
  }
}
*/

int kucukSayi(int s1, int s2) => (s1 < s2) ? s1 : s2;
