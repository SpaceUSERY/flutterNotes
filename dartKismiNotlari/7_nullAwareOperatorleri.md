## Null - aware operatörleri
```
void main() {

  var val1 = 'Emre';
  var val2;

  // val2 değeri null ise next'e val1 atanır. val2 null değil ise next'in yeni değeri val2 olur. Yani öncelik val2'de
  var next = val2 ?? val1;
  print('next: $next');

  var val3;

  // "next" null ise next'in yeni değeri val3 olur. null değil ise herhangi bir atama yapılmaz.
  next ??= val3;
  print('next: $next');

  String val4;

  // Burada "?" güvenlik sağlıyor, Kullanılmaz ise null pointer exception hatası verir.
  var length = val4?.length;
  print('length: $length');
}
```

#### Çıktısı
```
next: Emre
next: Emre
length: null
```