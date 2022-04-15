void main(List<String> args) {
  List<int> sayilarbos = [];
  if (sayilarbos.isNotEmpty) {
    print(sayilarbos.first);
    print(sayilarbos.last);
  }

  List<int> sayilar = [10, 9, 8, 4, 11, 2];

  print(sayilar.first); // bu listenin git ilk elemanını yazıdır.
  print(sayilar.last); // git listenin en son elamanını yazdır.
  print(sayilar.isEmpty); // bu liste boş mu ? true false döndürür.

  print("*****");
  //iki farklı şekilde de printf kullanılabilir.
  print('Boş mu:${sayilarbos.isEmpty}');
  print("Boş mu?:" + sayilarbos.isEmpty.toString());
// reversed anlık olarak diziyi ters yazdırır. kalıcı olarak diziyi ters çevirmez.
  print("Ters sırada yazdır:${sayilar.reversed}");
  print(sayilar);
  sayilar.add(23); // diziye böyle eleman ekleyebileceğimizi zaten biliyoruz.
  print(sayilar);
  sayilar.remove(
      4); // ilk gördüğü 4 elamını çıkarır. dizideki tüm 3'leri çıkarmaz.
  print(sayilar); // bakalım harbiden çıkarmış mı?
  sayilar.removeAt(0); // verilen indeksteki elamanı siler.
  print(sayilar);
  // sabit boyutlu dizelerde remove add fonksiyonları çalışmaz.

  if (sayilar.contains(9)) {
    print("listede 9 var");
  } else {
    print("listede 9 yok");
  }

  print(sayilar.indexOf(2)); //listedeki 2 nin indeksini öğreniyoruz.
  print(sayilar.elementAt(2)); //2.indeksteki liste elemanını gösteriyor.
  sayilar.shuffle(); // direk olarak listeyi karıştırıyor.
  print(sayilar);

  sayilar.clear(); // dizinin elamanlarını temizliyor..
  print(sayilar);
}
