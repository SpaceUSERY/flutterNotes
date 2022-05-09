void main(List<String> args) {
  Ogrenci emre = Ogrenci();
  emre.ogrAdi = "emre";
  emre.aktifMi = true;
  emre.ogrNo = 148;
}           

class Ogrenci {
  int ogrNo = 1;
  String ogrAdi = "";
  bool aktifMi = true;

  void dersCalis() {
    print("Öğrenci ders çalışıyor.");
  }
}
