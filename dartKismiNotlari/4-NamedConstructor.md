## isimlendirilmiş kurucu methodlar named constructor

#### Ben bir araba nesnesi üretmek istiyorum ama üç parametreyi de vermek istemiyorum.
```
var citroen = Araba(modelYili,marka,otomatikMi)
```

#### mesela markayı yazmayacağım.
#### bu şekilde nesne üretmek istiyorum ne yapmam gerekir?
```
var citroen = Araba(2018,true)
```
#### gidipte aynı burada olduğu gibi(paremetreli constructor oluşturduğumuz yerden bahsediliyor.)2 parametreli constructor oluşturabilirmisiniz? - hayır.
#### gidip
```
Araba(this.modelYili,this.marka,this.otomatikMi){
    print("Kurucu method tetiklendi");
}
```
#### kısmına model yılı isteğe bağlı olarak gelsin.marka yok. otomatikmi gelsin. gördüğümüz gibi kızıyor - neden?  -varsayılan constructor zaten tanımlı..
```
Araba(this.modelYili,this.otomatikMi){

}
```
#### 16.satırdaki varsayılan constructor. ama nedir parametre alan varsayılan constructor.
#### peki ne yapacağız?
#### burada devreye isimlendirilmiş kurucu methodlar giriyor.siz gelip;
```
Araba.markasizKurucuMethod();
```
#### böyle bir tanım yapabiliriz ve bundan istediğimiz kadar yapabiliriz.
#### varsayılan kurucudan bir tane yapabilirdik.
#### ama böyle isimlendirilmiş mesela;
```
Araba.markasizKurucuMetod();
```
#### böyle birden fazla kurucu metod çalıştırabiliyorum.
#### yani sınıf adı. diyip bunu fonksiyon gibi belirttiğinizde bunlarda kurucu metod oluyor.
#### kurucu metod neydi?
#### -bir nesne ürettiğimizde tetiklenen methoddu.
#### sonra buraya bildiğimiz gibi 
```
Araba.markasizKurucuMethod(this.otomatikMi,this.modelYili);
```
#### birtane daha eski usul yapalım.
```
Araba.modelYiliOlmayanKurucuMethod(bool otomatikMi,String marka);
```
#### ne diyecektik otomatikMi ye bu sınıfta parametre olarak gelen  bu değeri ata.
```
Araba.modelYiliOlmayanKurucuMethod(bool otomatikMi,String marka);
this.otomatikMi=otomatikMi;
this.marka=marka;
```
#### bakın iki tane daha kurucu method oluşturduk. peki bunları nasıl kullanıyoruz?
 #### kurucu methodumuzu çağırıyoruz. mesela ;
 ```
 var citroen = Araba.markasizKurucuMethod(false,2015);
 ```
#### nesne üretildi yukarıda benzer şekilde bunuda veritürü belirterek yapalım.
```
var citroen = Araba.markasizKurucuMethod(false,2015);
Araba suzuki = Araba.modelYiliOlmayanKurucuMethod(true,"Suziki");

```
#### evet ben artık burada suzuki. diyip mesela bilgileri söyleyi çağırabilirim.
#### aynı şekilde mesela yilHesapla'yı çağıralım bakalım neler oluyor.
```
var citroen = Araba.markasizKurucuMethod(false,2015);
Araba suzuki = Araba.modelYiliOlmayanKurucuMethod(true,"Suziki");
suzuki.bilgileriSoyle();
suzuki.yasHesapla();
```
#### hata alacağız çünkü neden biz suzuki oluştururken ne yapmadık - yıl değerini vermedik.
#### ve yasHesapla 'da modelYili diye bir değişken bekliyordu bizden .
#### Şimdi verilerinizi buna göre düzenlemeniz lazım.
#### ilk başta ne demiştik bu kullanılyordu ve kullanıcı mutlaka modelYilini giriyordu.
```
Araba(this.modelYili,this.marka,this.otomatikMi){
    print("Kurucu method tetiklendi.");
}
```
#### ama diğer durumda modelYili olmayan yapıda kurucu methodda kullanıcıdan mesela zaten oluşturken suzuki ile herhangibir model yılı girmedik. Burada ne yapabiliriz ? -Varsayılan değer atamak dışında birşey yapamayız. Hani yapımızı da bozmak istemiyorsak veya burda şöyle birşey yapabiliriz. Eğer model yılı eşit değilse null bunu yap değilse print model yılı olmadığından yaş hesaplanamadı.
```
void yasHesapla(){
    if (modelYili!=null)
    print("Arabanın yaşı $(2022-modelYili)");
    else print("Model yılı olmadığından yaş hesplanamadı");
}
```
#### en azından ne olmaz hata almayız.
#### umarım anlaşılmıştır o zaman varsayılan kurucu methodumuz ,varsayılan ama parametre alan kurucu methodumuz var ,ya parametreli yada parametresiz olanı kullanıyoruz yani.
#### birde istediğimiz kadar oluşturabileceğimiz isimlendirilmiş kurucu methodlarımız var. 
#### bunlarda yine her nesne üretildiğinde tetiklenen methodlar bunlar.
#### ve burada sınıfınız değişkenlerine ilk atamalarını yapabilir.
#### hani burda bir sınıf yaptınız burada bir kurucu method o sınıf ilk çalışır çalışmaz gidip internetten verileri getirip burada sizin için hazırda bekletebilir. Somut örnekler bu şekilde olacak. Flutterda da göreceksiniz ki bunları sürekli kullanacağız. O yüzden iyi anlamaya çalışalım.iyi anlayamazsak da canınızı sıkmayın. Zaten dediğimiz gibi kullanırken bunları tekrarlayacağız 