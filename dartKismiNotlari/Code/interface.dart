void main(List<String> args) {}

abstract class Hayvan {
  void soyutOlmayanMethod() {
    print("metodun tanımı");
  }
}

abstract class Ucabilenler {
  void fly();
  void test() {
    print("sedrgg");
  }
}

abstract class Kosabilenler {
  void run();
}

abstract class Havlayabilenler {
  void bark();
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {}

  @override
  void test() {
    // TODO: implement test
  }
}

class Insan implements Kosabilenler {
  @override
  void run() {}
}

class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler {
  @override
  void bark() {}
  @override
  void run() {}
}
