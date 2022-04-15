import 'dart:io';

void main(List<String> args) {
/*   print("ilk notu gir: ");
  int? sayi1 = int.parse(stdin.readLineSync()!);
  print("ikinci notu gir: ");
  int? sayi2 = int.parse(stdin.readLineSync()!);
  print((sayi1 + sayi2) / 2); */

  print("Fiyat gir:");
  int? fiyat = int.parse(stdin.readLineSync()!);
  double kdv = fiyat + ((fiyat * 18) / 100);
  print(kdv);
}
