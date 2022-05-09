void main(List<String> args) {
  Araba honda = Araba();
  honda.modelYili = 2020;
  honda.marka = "honda";
  honda.otomatikMi = true;
  honda.bilgileriniSoyle();
  honda.modelYili = 2021;
  honda.bilgileriniSoyle();
  var reno = Araba();
}
class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;
  void bilgileriniSoyle() {
    print(
        "Marka : $marka, Model Yılı : $modelYili, Otomatik Mi : $otomatikMi "); //string interpolation deniyo bu $'lere
  }
  Araba() {
    print("Kurucu method tetiklendi..");
  }
}