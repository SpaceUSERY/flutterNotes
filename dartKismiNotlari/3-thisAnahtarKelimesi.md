## this anahtar kelimesi ve kullanım amacı
#### https://www.udemy.com/course/sifirdan-flutter-ile-android-ve-ios-apps-development/learn/lecture/26955178#content
- Kurucu methodlara küçük bir ara verelim ve bu derste this anahtar kelimesine bakalım.
- Bunun içinde şöyle bir örnek  void yashesapla dedik, o an arabanın modelyılı belli ya arabanın yaşını hesaplamaya çalışalım.
```
class Araba {

    int? modelYili;
    String marka;
    bool? otomatikMi;
    Araba(int modelYili,String marka,bool otomatikMi){
        print("Arabanın model yili $(modelYili),markası : $(marka), otomatik mi $(otomatikMi)");
    }
    void yasHesapla(){
        print("Arabanın yaşı :${2022-modelYili} ");
    }
}
```
- şimdi burada bir hata var. Derleyici bize diyorki model yili dediğin şey null olabilen bir integer. Sen sanki hiç null olmayacak gibi onu işleme sokuyorsun diyor.
- Şimdi 2022'den ben null değer çıkartamam değil mi hata verir.
- Biz bunun null değer olabileceğini söylemiştik.
- Bu gibi durumlarda ne yapıyorduk.
- Ya varsayılan değer giriyorduk. ki buda kurtarmıyor modelYili null olamaz. kullanıcı bana değeri vermezse bunu kullan demiş oluyoruz.(Araba classının içerisindeki int modelYili= 2021; yaptık soru işaretini de kaldırdık yani.)
- Ama biz bir yola çıkmıştık buna uygun ilerleyelim.
- (soru işaretini tekrar koyduk ve varsayılan değeri sildik.)
- gittik yashesapla fonksiyonundaki modelYilina ! işareti koyduk.
- Koyduğumuz ünlem işareti ne işe yarıyor. Yani biz diyoruz ki tanımında null olabilir dedik ama sen merak etme hiçbir zaman o değer null olmayacak diyoruz.
- Peki ben bunu nasıl kullanacağım?
- Aynı ben bmw.bilgileriniSoyle(); dediğim gibi, bmw.yasHesapla(); diyip bunu çağırmamız lazım.
- bakalım f5 ile derledik..
- Hopss (hata verdi derleyici)
- Hani null safety vardı ve bizi koruyordu?
- koruyor aslında ama biz buna ufak bir eksiklik yaptık.
- Şimdi buradaki durum şu: Hocam biz her türlü yılıda aldık bu neden null verdi? -Haklısınız.
- Biz burada bir taslak hazırladık. Taslakta dedik ki biz burada 3 tane veriyi saklayacağız. Doğru mu? - veriler geldi,
var bmw=Araba(2021,"BMW",true); içindekiler hop Araba clasındaki int modelYili,String marka,bool otomatikMi içine atıldı.
- Değişkenlerimizin neyi vardır? - Bir yaşam alanı vardır. Siz bu değerleri buraya verdiğinizde bunlar şu süslü parantezlerin içinde yaşarlar.(Araba classındaki parametreli constructor kastediliyor.) ama bunların dışında hiçbirşekilde tanımları,kullanımları yoktur.
- Umarım burası anlaşılmıştır.
- Peki ben o zaman yasHesapla dediğimde neye erişmeye çalışıyorum?
- sınfımın içindeki int modelYili,String marka , bool otomatikMi değerlerine ulaşmaya çalışıyorum.
- bir kutu oluştu ama bizim kutudaki modelYili,marka,otomatikMi değerleri beklyor null olarak.
- Bizim ne yapmamız lazım? 
- kullanıcıdan aldığımız veriler kutulara koymamız lazım.
- Yani parametreli Araba constructoruna gelip bu sınıfta model Yili diye bir değişken var buna parametre olarak gelen modelYilini ata.

```
Araba(int modelYili,String marka,bool otomatikMi){
    print("Kurucu method çalıştı");
    modelYili=modelYili;
}
``` 
- Benzer mantıkla bu sınıfta marka diye bir değişken var paramtre olarak belirlediğim markayi da markaya koy,aynı şekilde otomatikMi diye bir değişken var ,parametre olarak gelen değeri bunun içine koy.
``'
Araba(int modelYili,String marka,bool otomatikMi){
    print("Kurucu method çalıştı");
    modelYili=modelYili;
    marka=marka;
    otomatikMi=otomatikMi;
}
``` 
- Yani burada ilk yazdıklarım bu sınfınn içindekiler, diğerleri parametre olarak gelenler.
- Hala hata alıyoruz. Sisteminde kafası karışıyor.
- buradaki marka parametre olarak gelen marka mı yoksa sınıfın içindeki değer mi?
#### bu gibi durumlarda this anahtar kelimesini kullanıyoruz..

``'
Araba(int modelYili,String marka,bool otomatikMi){
    print("Kurucu method çalıştı");
    this.modelYili=modelYili;
    this.marka=marka;
    this.otomatikMi=otomatikMi;
}
``` 
- dediğimiz şey şu parametre olarak gelen modelYilini bu sınıftaki modelYili içerisine ata.
- Yani o an oluşturulan nesnenin; modelYili,marka ve otomatikMi olarak gelen bu değerleri ata dememiz gerekiyor.
- tekrar çalıştıralım. bakın hata gitti..
- Peki biz burada bu thisleri kullanmasak da hocam ben bunlara istediğim isimleri verebilirim.
- parametre olan modelYili değişkenini yil, markayı m,otomatikMi, yi de O yaptım.
- Peki bu sefer o thisi yazmamıza gerek kalıyor mu?
```
Araba(int yil,String m,bool o){
    print("Kurucu method çalıştı");
   // this.modelYili=modelYili;
   // this.marka=marka;
   // this.otomatikMi=otomatikMi;
    modelYili=yil;
    marka=m;
    otomatikMi=o;
}
```
- Çalıştıralım yine herhangibir sorun olmuyor.
- Yine bazı arkadaşlar soruyolar bunu bana sorularda niye thisi kullandık.
- mesela ben arabanın modelYilina this.modelYili dermiydiniz derdiniz(parametreli constractırın printindeki modelYilindan bahsediliyor).Zaten burda en tepede belirtilen değişkenlere erişilebilir.Gidipte başka methodların,başka kurucu methodların içindeki verilere zaten erişemezdiniz.
- Ama eminim yukarda thisin önemini anlamışsınzıdır.
- parametre ile sınıfın içinde tanımladığımız instance varriable dediğimiz yapıların isimleri birebir aynıysa artık thisi kullanmak zorunda kalıyoruz.
- Önemli bir konu olduğu için tekrarlayalım...
- Yukarıda(mainin içinde ) bmw'yi oluşturmak istiyoruz. kullanıcı bana değerleri de verdi.
- Kullanıcı bu değerleri verdiğinde ne oluyor - parantezler çalıştığında bir kutu oluşuyor.
- kullanıcın bu değerleri Araba sınıfındaki bulunan bu değişkenlere burdaki satırlarla aktarılıyor.(parametreli constructor olan kod bloğu kastediliyor.)
- girilen 2021 bmw ve true değerleri artık oluşan kutunun içerisine yazıldığı için herhangibir null değer vs almıyoruz.
- Bunun bir kısa yolu daha var.Genellikle de onu kullanıyoruz aslında nedir? -direk olarak ilk parametre int ya bunu al yani kullanıcını verdiği 2021'i modelYilina ata. oda şöyle oluyor:
- 
```
Araba(this.modelYili,this.marka,this.otomatikMi){
}
```

- hiçbir sıkıntı olmadan çalışacaktır.
- Yani önce parametreleri alıp this.marka=marka demektense direkt olarak kullanıcın verdiği verileri sınıfımızın değişkenlerine ata ki this diyerek bunu belirtiyoruz.
- ata ki o kutunun içindeki değerler dolu olsun, null hataları almayalım demiş oluyorsunuz.
- peki this ne anlama geliyor. bmw oluşturulurken onun bilgileri atanırken bmw'yi temsil ediyor.this,reno için renoyu temsil ediyor. honda içinde hondayı temsil ediyor. yani o an oluşturulan o an temsil edilen nesneyi temsil ediyor.
- this kullanımı da bu şekilde...
