## Dartta String değişkeni 
```
void main() {
   String str1 = 'String değeri';
   String str2 = "String değeri";
   String str3 = '''String değeri

   String değeri''';
   String str4 = """String değeri

   String değeri satır2,

   String değeri satır3

   """;

   print(str1);
   print(str2);
   print(str3);
   print(str4);

   String eklenmis = str1 + str2;

   print("Eklenmiş String: ${eklenmis}");

  print("str4 uzunluk= ${str4.length}");
}
```

#### çıktısı:
```
String değeri
String değeri
String değeri
String değeri

   String değeri
String değeri

   String değeri satır2,

   String değeri satır3

   
Eklenmiş String: String değeriString değeri
str4 uzunluk= 69
   
```