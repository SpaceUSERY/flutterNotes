## Switch Case kullanımı : 
```
void main() {
  var aa = 1919;

  switch (aa) {
    case 19:
      print("aa = 19");
      break;

    case 05:
      print("aa = 05");
      break;

    case 1919:
      print("aa = 1919"); //Çalışır.
      break;

    case 313:
      print("aa = 313");
      break;

    default:
      {
        print("aa bu değerlerin dışında bir değere eşittir");
      }
  }
}
```

#### Çıktısı: 
```
aa = 1919
```