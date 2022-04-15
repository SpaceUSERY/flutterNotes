## Sabit değerler
#### final: 
- Oluşturulan değer sabittir.
- Daha sonra farklı bir değer atanmaz.
- Değer kullanıldığı andan itibaren ram üzerinde tutulmaya başlar.
- Değer tipi belirtilmelidir.
#### const:
- Oluşturulan değer final'de olduğu gibi sabittir.Ancak kullanıldığı andan itibaren ram üzerinde tutulmaya başlar.
- Tip belirtmeye gerek duymaz.
- Değer tipine göre değişken ataması yapılır.
- örnek:
```
 void main() {

  final String ad = "Yunus Emre";
  final String soyad = "YAZICI";

  const PI = 3.141592;

  print(ad + ' ' + soyad);
  print(PI);

  //ad = elma; // => hata verir. Değiştirilemez.
  //PI = 2.718281; // => hata verir. Değiştirilemez.

}
```
