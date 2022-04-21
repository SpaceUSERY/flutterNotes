## Kurucu constructor methodları ve çeşitler
#### https://www.udemy.com/course/sifirdan-flutter-ile-android-ve-ios-apps-development/learn/lecture/13072028#content
- Sınıf adından sonra direk süslü parentez gelir. Çünkü bu bir fonksiyon değil bu bir sınıftır.
- O yüzden bu yazımlara dikkat edin, gördüğünüz gibi herhangibir yerde noktalı virgülde yok.
- Şimdi ben araba diye kendi veri türümü oluşturmak istiyorum ve düşünüyorum araba ile ilgili ne tür veriler tutabilirim? veya tutmak istiyorum.
- mesela modelyılı sonra buna varsayılan değer atayabileceğimizi söyledik veya bunun null değeri olabileceğini belirtmek için buna soru işareti koyabiliyorduk.
```
class Araba {
    int? modelYili;
    String? marka;
    bool? otomatikMi;

}
```
- sonra ne demiştik? -sınıflarımızda böyle bilgiler saklayabileceğimiz gibi, sınıflarımızın yapabileceği işleride fiil gibi belirtebileceğimiz fonksiyonlar yani methodlarda oluşturabiliriz.mesela:
```
class Araba{
    int? modelYili;
    String? marka;
    bool? otomatikMi;
    void bilgileriSoyle(){
        print("Arabanın model yili $(modelYili),markası : $(marka), otomatik mi : $(otomatikMi)); // (ne deniyordu buna string interpolaiton)
    }
    }
``` 
- ne yapacak yani bu fonksiyon? - ben bu fonksiyonu çağırdığımda o anki arabanın bilgilerini gösterecek.
- tamam şimdi bu bizim taslağımızdı. Ve artık ne yapabiliriz bundan seri üretime geçip örnekler yani nesneler oluşturabiliriz.
```
main(List<String> args){
    Araba honda= Araba();
}
```
- bunu yaptığımda ne oluyordu? -bellekte bir kutucuk açılıyordu. ve bu kutucuğun içerisinde arabanın değerlerini saklayabiliyorduk.
- sonra ne yapalım honda. diyip bunlara erişelim.
```
main(List<String>args){
    Araba honda = Araba();
    honda.marka= "Honda";
    honda.modelYili= 2020;
    honda.otomatikMi=true;
}
```
- Görsel olarak düşünmemiz gerekirse; belleğimizde bir kutu oluştu. Ne zaman oluştu bu Araba dedik aç parantez kapa parantez dediğimiz anda bu kutu oluşuyor. Araba() ..
- Daha sonra siz bu kutunun içerisine değerlerinizi yazıyorsunuz.
- honda,2020,true diye.
- ben honda . dedikten sonra o kutu ile ilgili hem değişkenlere hemde bilgilerini söyle gibi fonksiyonlara yani methodalara erişebilrim.
- view'dan debug console veya f5 tuşuna basarak kodumu çalıştırabilirim.
```
main(List<String>args){
    Araba honda =Honda();
    honda.marka="Honda";
    honda.modelYili=2020;
    honda.otomatikMi=true;
    honda.bilgileriniSoyle();
}

class Araba{
    int? modelYili;
    String? marka;
    bool? otomatikMi;
    void bilgileriSoyle(){
        print("Arabanın model yili : $(modelYili), arabanın markası : $(modelYili), Otomatik mi $(otomatikMi));
    }
}
```
- Bakın girdiğim verileri yazdı. 
- aynı şekilde gidip sonradan bunların değerini değiştirebiliriz. Mesela model yılını 2021 yapalım. bunu yaptıktan sonra çalıştırdığımda, kutudaki 2020 değeri 2021 olarak güncellenecek.

```
main(List<Strings>args){
    Araba honda = Araba();
    honda.marka="Honda";
    honda.modelYili=2020;
    honda.otomatikMi=true;
    honda.bilgileriniSoyle();
    honda.modelYili=2021;
    honda.bilgileriniSoyle();
}
```

- bunu dediğimiz zaman aslında farkında olmasak da kurucu method constructor var tetikleniyor.
- İsterseniz size bunu ispatlayalım.
- Constructor dediğimiz özel bir methoddur aslında birebir sınıf adıyla başlar. aynı şekilde yazıyoruz.Herhangibir geri dönüş tipi yoktur. void int string gibi..
- Şöyle bir yapıdır aslında 
```
Araba(){

}
```
- yani biz buraya bunu yazmasak da gizli de olsa burda böyle bir yapı mevcut ve siz yeni bir nesne ürettiğinizde bu yapı çalışıyor. nasıl ispatlarız?
- bir print yapıp içerisine kurucu method tetiklendi yazalım.

```
Class Araba {
    int? modelYili;
    String? marka;
    bool? otomatikMi;
    Araba(){
        print("kurucu metot tetiklendi");
    } 
}
```
- bakın bunu çağırdığım herhangibir yer yok. Ekrana bunu bastırması için çağırmıyorum hiçbir yerde ne zamanki şu satır çalışıyor,aslında ilk önce o yazığımız constructor çalışıyor.
```
Araba honda = Araba();
```
- gördüğünüz gibi kurucu method tetiklendi dedi. sonra bilgileri söyleyi iki kere yazdı.
- gelin yeni bir araba oluşturalım bunuda var ile oluşturalım. hiçbir bilgi atamayacağım bakalım ne oluyor.
```
main(List<Strings>args){
    Araba honda = Araba();
    honda.marka="Honda";
    honda.modelYili=2020;
    honda.otomatikMi=true;
    honda.bilgileriniSoyle();
    honda.modelYili=2021;
    honda.bilgileriniSoyle();
    var reno= Araba();
    reno.bilgileriniSoyle();
}
```
- kurucu method tetiklendi dedi ilk satırdan dolayı, bilgileri söyleyi iki kere yazdı ve yeni bir nesne ürettiğim an kurucu method tetiklendi tekrar basıldı.
- yani bizim bir kutumuz vardı ya honda ile ilgili biz bunu yaptığımızda ne oluyordu reno ile ilgili bir kutu açılıyordu ve bunun bilgilerini göster dediğimde herhangibir değer yazmadığım için hepsine null diyor ama öncesindeki satırda kurucu method tetiklendi dedi.
- var reno = Araba(); dediğimiz an hem yeni bir kutu oluşturuyoruz. ve aslında kutu oluşmadan önce kurucu method dediğimiz yapı çalışıyor.
#### Peki neden önemliydi ? Kurucu method bizim ne işimize yarıyacak?
- Araba classının içerisindeki değerleri tek tek girmek yerine şöyle bir dünya olsa  güzel olmazmıydı.
- var bmw = Araba(); diyorum ya ben burada direk verileri girsem bu arabanın model yılı,markası,otomatik mi true
```
var bmw= Araba(2021,"BMW",true);
```
 - bu değerleri böyle girmek isteyebilirm. Kutu oluşur oluşmaz direk içine verileri koymak isteyebilirim. En başta yaptığım gibi tek tek yapmaktansa bu gibi durumlarda bu kurucu methodları kullanıyoruz. 
 - Kullanıcıya bilgi vermek içinde kullanabiliri. Ben böyle böyle bir araba oluşturuyorum, saçma bir şey olur ama kullanılabilir.
 - Yani bu kutuları çizerken ilk yapılan atamalar,hazırlıklar,vs hep bu kurucu methodların içinde yapılır. ve bu en basit kurucu methoddur. Default kurucu method.
 - Zaten bunula ilgili bilgileri buraya yazdım. Default yani varsayılan kurucu methodumuz bu.
 - Peki  ben buradaki gibi değerleri vereceksem fonksiyonlar aklınıza gelsin bunu da bir fonksiyon gibi düşünürsek üç tane parametre alan bir fonksiyon değil mi.
 - Yazdığımız constructor içinde öyle bir parametre varmı? -hiç yok.
 - Acaba diyorum verdiğim sırayla bu değerleri alan bir yapı oluştursam, mesela ilk değer ne int bir sayı yukardakiyle birebir aynısını yazıyorum.Size birşey göstereceğim çünkü..

 ```
 Class Araba {
     int? modelYili;
    String? marka;
    bool? otomatikmi;
    Araba(){
        print("Kurucu method tetiklendi.");
    }
    Araba(int modelYili,String marka,bool otomatikMi){
        print("kurucu method tetiklendi");
    }
 }
 ```
 - Yapının aynısını yazdık ama hata veriyor,üzerine gittiğimizde ne diyo varsayılan constructor zaten tanımlı!, eğer siz yine aynı buradaki gibi bir constructor oluşturmak istiyorsan ya bunu seç ya diğerini diyor, ikini aynı anda kullanmana izin veremem diyor.
 - Az önce oluşturduğumuz parametreli kurucu method,ama ikisi aynı anda kullanılmaz. o yüzden ne yapalım parametresiz olan constructorı silelim.
 - bu seferde maindeki var reno =Araba(); dediğimiz ksıım kzıyor.
 - altta bitane constructor var 3 tane parametre istiyor ve sen bana onları vermemişsin diyor.
 - Aynı şey mainin altındaki kod satırı içinde geçerli.
 - Üzerine geldiğimde benden ne bekliyor; sırasıyla model yılı,marka , otomatik mi değerlerini bekliyor.
 ```
Main(List<String> args){
Araba honda =Araba(2020,"Honda",true);
hondabilgileriSoyle();
var reno = Araba(); // bu satır bize neden kızıyor? 
reno.bilgileriSoyle();
var bmw =Araba(2021,"BMW",true);
}
```

- Araba clasında tanımladığımız parametreli constructora gidip null değer alabileceğini söyleseydik. ve reno tanımlamasının içerinine null vereseydik ne olurdu? var reno = Araba(null,null,null);
 - hiçbir sıkıntı olmazdı çünkü biz bunların null olableceğini söyledik.
 - İşte bunlardan kurtulmak için Dart bize null safety özelliğini getirmiş, çünkü birşeyleri ben yazmayayım null geçeyim dediğimizde programımız sonradan çok büyük hatalara sebep veriyor.
 - O yüzden oluşturuyorsak değerini mutlaka girellim.
 ```
Main(List<String> args){
Araba honda =Araba(2020,"Honda",true);
hondabilgileriSoyle();
var reno = Araba(2019,"reno",false);
reno.bilgileriSoyle();
var bmw =Araba(2021,"BMW",true);
bmw.bilgileriniSoyle();
}
```

- çıktı olarak 3 kere kurucu method tetiklendi yazısnı görüyorum ve her seferinde farklı kutuların bilgilerini görüyorum.
- O zaman kısa bir özet geçelim, her nesne oluşturulduğunda kurucu method çalışır.
- Dersin başında yazdığımız kurucu methoda defult kurucu method diyoruz.
- en son yazdığımıza parametreli kurucu method diyoruz.
- İki kurucu methodu aynı anda kullanamıyoruz.Ya ilki olacak ya ikincisi.
- Benim iki türden de kurucu methodlara ihitiyacım varsa ne yapacağım? - diğer dersin konusu...