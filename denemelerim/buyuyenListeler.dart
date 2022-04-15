/*
Dinamik listeler büyüyüp küçülebilen listelerdir.

sabit uzunluklu listelerdeki gibi sayilar[0]=1 kullanamayız.
dinamik listelerde add isimli fonksiyonu kullanırız.
*/
void main(List<String> args) {
  List<int?> sayilar = [];
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  sayilar.add(5);
  sayilar.add(6);
  // sayilar.length = 100; >>> 6 değer verdik geriye kalan 94 eleman null değerini aldı.
  // program karmaşıklaştıkça null ifadeler sorun yaratır müümkn olduğunca null kullanılmamalıdır. ama kullanılabilr olduğunu görmüş olduk.
  print(sayilar);

  List<dynamic> dinamikListe = [];
  dinamikListe.add(1);
  dinamikListe.add(231);
  dinamikListe.add(true);
  print(dinamikListe);

  print("*****");
  // elemanlarım belli ise listeyi nasıl oluştururum?
  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(55);
  print(sayilar2);

  print("*****");
  List<int> sayilar3 = List.filled(10, 10, growable: true);
  sayilar3.add(
      87); //listenin en sonuna bir eleman daha ekledik. bu liste artık başta belirttiğimiz 10 elamanlı liste değil growable değerini true yaptığımız için 11.eleamnı ekleyebildik.lenghtnını güncellemiş olduk yani
  print('sayılar 3 dizesi: ${sayilar3}');
  print('Sayılar 3 dize uzunluğu:${sayilar3.length}');

// 40-41 her ikiside bomboş büyümeye hazır liste
  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
  sayilar5.add(5);
  sayilar4.add(10);
  print(sayilar4);
  print(sayilar5);
  // burdaki tek fark artık ben sayılar 5'in 1.indeksine 9 yaz diyemem. sayilar5[1]=52;
  //bunun dışındaki olaylar birebir aynı.
}
