/*
Öğrenci isimli sınıf oluşturun.
Bu sınıfta öğrencilerin idsi ve not değeri tutulmalı.
100 elamnlı bir listede id ve not değerleri rasgele eoluşturarak bu öğrencileri saklayan ve bu öğrencileri yazdıran metodu yazın.

*/

import 'dart:math';

import 'ogrenciClasslari.dart';

void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(id: 5, not: 10);
  List<Ogrenci> tumOgrenciler = List.filled(100, Ogrenci());
  ogrenciListesiniDoldur(tumOgrenciler);

  for (Ogrenci oankiOgrenci in tumOgrenciler) {
    print(oankiOgrenci);
  }
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] = Ogrenci(id: Random().nextInt(1000), not: Random().nextInt(100));
  }
}