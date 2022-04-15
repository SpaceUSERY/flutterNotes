## For döngüsü

```
void main() {
  for(var i = 0; i <= 10; i++){
      print("i = $i");
  }

  List list = ["emre","yazıcı","android", "flutter", "dart"];

  for(String a in list){
    print("$a");
  }

  for(int i=0; i < list.length; i++){
    print("list item = "+ list[i]);
  }
}
```

#### Çıktısı
```
i = 0
i = 1
i = 2
i = 3
i = 4
i = 5
i = 6
i = 7
i = 8
i = 9
i = 10
emre
yazıcı
android
flutter
dart
list item = emre
list item = yazıcı
list item = android
list item = flutter
list item = dart
```

#### Başka bir örnek 

```
var collection = ["0", "1", "2"];
for (var x in collection) {
  print(x);
}
```

#### Çıktısı:

```
"0" "1" "2"
```