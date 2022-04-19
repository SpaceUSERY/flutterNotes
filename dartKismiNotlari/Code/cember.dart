/*

Çember daire adlı bir sınıf .Bu sınıfın yarıçap alan kurucusu olmalı.
Ayrıca cevap ve alan hesaplayan metotlar olmalı
pi=3.14 alınmalı.
*/

class CemberDaire {
  int _yaricap = 1;
  double _PI = 3.14;
  CemberDaire(int yariCap) {
    _yariCapKontrol = yariCap;
  }
  void set _yariCapKontrol(int deger) {
    if (deger > 0) {
      _yaricap = deger;
    } else {
      _yaricap = 1;
    }
  }

  double cevreHesapla() {
    return 2 * _PI * _yaricap;
  }

  double alanHesapla() {
    return _PI * _yaricap * _yaricap;
  }
}
