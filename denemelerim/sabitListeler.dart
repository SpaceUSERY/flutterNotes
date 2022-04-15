/*
* Liste:
Sabit uzunluk listeler: 
- Örneğin başta programı yazarken kaç tane sayı tutmamız gerektiği belli ise sabit uzunluklu listeleri kullanırız.

- Çıktıda köşeli parantez gördüğümüz zaman bunun direk liste olduğu aklımıza gelmeli. [1,2,3,4,….]
*/

void main(List<String> args) {
  List<int> sayilar = List.filled(9, 21, growable: false);
  print(sayilar);
  print('Liste uzunluğu:${sayilar.length}');
  sayilar[0] = 1;
  sayilar[3] = 3;
  sayilar[5] = 19;

  print(sayilar[0]);
  print(sayilar);

  List<String> isimler = List.filled(9, "yarraaa");
  print(isimler);

  List karisik = List.filled(3, 0);
  karisik[0] = true;
  karisik[1] = 5;
  karisik[2] = 'emre';
  print(karisik);
  print(karisik.length);
/*
  List<dynamic> karisik = List<dynamic>.filled(3, 0);
  karisik[0] = true;
  karisik[1] = 5;
  karisik[2] = 'emre';
  print(karisik);
  print(karisik.length);
*/
// Liste elemanlarını gezmek

  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5;
    print(sayilar[i]);
  }
  print("****");
  for (int oankiEleman in sayilar) {
    print(oankiEleman);
  }
}
