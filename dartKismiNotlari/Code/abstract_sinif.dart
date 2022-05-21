void main(List<String> args) {
  Sekil s1 = Kare(10);
  Sekil s2 = Dikdortgen(10, 5);

  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);

  test(s1);
  test(s2);
}

void test(Sekil sekil) {
  sekil.selamla();
  print(" alanim:${sekil.alanHesapla()}, cevrem:${sekil.cevreHesapla()}");
}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void selamla() {
    print("Ben sekil sinifindanim");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  void selamla() {
    print("ben kareyim amk");
  }
}

class Dikdortgen extends Sekil {
  int kenar1;
  int kenar2;
  Dikdortgen(this.kenar1, this.kenar2);
  @override
  double alanHesapla() {
    return kenar1 * kenar2.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * kenar1 + 2 * kenar2.toDouble();
  }

  @override
  void selamla() {
    print("ben diktordgenim amk");
  }
}
