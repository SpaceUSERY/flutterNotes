void main() {
  int sayi1 = 19;
  var sayi2 = 5;
  int sonuc;

  sayi1 < sayi2 ? sonuc = sayi1 : sonuc = sayi2;
  print("Küçük sayı: $sonuc");

  sonuc = (sayi1 < sayi2) ? sayi1 : sayi2;
  print("küçük : $sonuc");

  /*
  String str1;
  String str2 = "Emre";
  String str3;

  // str3 = str1 ?? str2;

  //print("str3: $str3");
*/
}
