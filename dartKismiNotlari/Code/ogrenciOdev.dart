/*
  Öğrenci isimli sınıf oluşturun.
  Bu sınıfta öğrencilerin id'si ve not değerleri tutulmalı.
  100 elemanlı bir listede id ve not değerleri rastgele oluşturarak bu öğrencileri saklayın.
  Son olarak bu öğrencileri yazdıran method yazın.

*/
import 'dart:math';
import 'ogrenci.dart';

main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(id: 5, notDegeri: 10);
  List<Ogrenci> tumOgrenciler = List.filled(5, Ogrenci());

  ogrenciListesiniDoldur(tumOgrenciler);

  for (Ogrenci oankiOgrenci in tumOgrenciler) {
    print(oankiOgrenci);
  }
  ogrencilerinOrtalamasiniHesapla(tumOgrenciler);
  print("Tüm Öğrencilerin Not ortalaması : " +
      ogrencilerinOrtalamasiniHesapla(tumOgrenciler).toString());
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}

double ogrencilerinOrtalamasiniHesapla(List<Ogrenci> liste) {
  int toplam = 0;
  for (Ogrenci oankiOgrenci in liste) {
    toplam = toplam + oankiOgrenci.notDegeri;
  }
  return toplam / liste.length;
}
