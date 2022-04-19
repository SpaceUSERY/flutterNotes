## Sınıf ve nesne kavramları
###### https://www.udemy.com/course/sifirdan-flutter-ile-android-ve-ios-apps-development/learn/lecture/13072024#overview
- Kavramamız gereken 3 ana yapı var.
- 1. Nesneye yönelik programlama kavramları
- 2. Fonksiyonlar
- 3. Koleksiyon yapıları.
#### Günlük hayatta gördüğümüz her şey bir nesnedir. Peki programlamada biz günlük hayattaki bu olayları nasıl yansıtıyoruz? 
- Şimdiye kadar int=5 dedik , dart bana int sayıları tutmak için böyle bir yapı hazırlamış ve ben bunu kullanuyorum.
- Metinleri tutmak için String diye bir yapı var ve bunları kullanıyorum.
#### Peki bunların yetmediği durumlarda veya bunları bir araya getirip kendi veri türümü oluşturmak istediğimde ne yapacağım?
- Şöyle düşünebiliriz: Örneğin dartta şimdiye kadar int,string,bool gibi yapılar vardı. Daha sonra dediler ki bizim list diye bir yapımız olsada kullanıcılarımız bunu kullansa çünkü kendine has bir sürü özelliği var doğru mudur?
- İşte list dediğimiz yapı bir sınıf yapısıdır. ve dartı yazan insanlar bizim işlerimizi kolaylaştırsın diye böyle bir yapı oluşturmuşlar.
- Aynı şey map ve set içinde geçerli aslında.
- Aslında bizde bunların olduğu gibi kendi veritürümüzü oluşturabiliriz aslında. 
- Mesela ben öğrenci ile ilgili bilgiler saklamak istiyorum. Öğrencinin adı soyadı aldığı dersler numarası , ortalamasını bulma gibi birsürü özelliği olan yapı hazırlamak istiyorum.
- Bunu sadece mainde'ki int ve stringlerle yaprsak main karmançorman olur.
- O yüzden böyle bir isteğimiz varsa kendi veritipimizi hazırlayacakak işte burada ne yapmamız gerek - sınıflardan fayalanmamız gerek.
- Sınıf yapısını göreceksiniz flutter kısmında bir yazıdan bir butona kadar herşey aslında kendi içerisinde bir sınıf.
- class dedikten sonra veritürünüzün adını yazıyorsunuz. Ben öğrenci ile ilgili bilgiler saklayacağım için class öğrenci olacak ve süslü parantezi koyarak bu tanımı yapıyorum.
- Şimdi burada yapacağım tüm veriler aslında bu öğrenci sınıfın taslağının oluşturulması için gerekli olan yapılar.
- Sonrada kendime şu soruyu soracağım. 
- Bir öğrencinin hangi verileriyle ilgileniyorum ? Hangi verileri tutmak istiyorum? 
- Mesela öğrencinin integer türünde numarası olabilir.
- Bu arada isimlendirmeyede dikkat edin nasıl; değişkenleri küçük harfle,fonksiyonları küçük harfle isimlendiriyorduk.
- Sınıf adları büyük harfle başlar.
- 
```
class Ogrenci{
    int ogrNo;
    String ogrAd;
    bool aktifMi;
}
```
- Kodumuzu yazdıktan sonra dart bize kızıyor.
- Bu uyarılar dart'ın null safety özelliğinden kaynaklıdır.
- Tanımladığımız değişkenlere ilk değer ataması yapmadığımız için null oluyor ve dart bunu kabul etmiyor.
- Burada karşımıza iki tane çözüm yolu çıkıyor.
- 1. Ya bunlara siz null olabilirsiniz diyebiliriz.
```
class Ogrenci{
    int? ogrNo;
    String? ogrAd;
    bool? aktifMi;
}
``` 
- 2. yada ilk değer ataması yapacağım.
```
class Ogrenci{
    int ogrNo=1;
    String ogrAd= "";
    bool aktifMi=true;  
}
```
- Bunların dışında öğrencinin özelliklerini tanımlayabileceğimiz gibi, öğrencinin yapacağı işleride yani öğrencinin fonksiyonlarını da sınıf adına yazabiliriz.
```
class Ogrenci{
    int ogrNo=1;
    String ogrAd="";
    bool aktifMi=true;

    void dersCalis(){
        print("Öğrenci ders çalışıyor.");

    }
}
```
- Değişken tanımlayabildiğimiz gibi dersCalis şeklinde fonksiyonlarda tanımlayabiliyoruz.
- Ekstra olarak : Sınıfın içerisinde tanımladığımız fonksiyonlara method da denilebilir. Fonksiyonda denir,methodda denir.Aklınızda olsun.
- Şimdi taslağımız hazır bu taslaktan örnekler çıkarmamız lazım.
- Bir araba fabrikası düşünün mühendisler giderler yazarlar,çizerler birsürü işlem yaparlar, kağıt üstünde henüz bir araba yoktur. Burası o kısım. Burası bittikten sonra ne olur bundan seri bir şekilde araba üretmeye başlanır. Şimdi o kısmı yapacağız.
- O kısmı yapmakta int sayi =5 demekten hiç farklı değildir.
- Şimdi burada neler oluyordu ? 
- Verimizin türü geliyordu (int).
- Aşağıda class oluştururken aslında ne demiştik - kendi veri türümüzü oluşturuyoruz dedik o halde önce ne gelecek . "Ogrenci" daha sonra ne geliyor değişken adı. Mesela bu öğrenci emre olsun. ondan sonrada ne yapmamız gerekiyor.
- Burada şunu yapmamız gerekiyor. Ogrenci emre = Ogrenci();
- Ogrenci emre =5; diyemem neden çünkü emrenin içerisinde bir sürü alan var.
- İlk olarak bunun için bir yer ayırmamız gerekiyor.
- Ogrenci emre =Ogrenci(); bu şekilde..
- Siz ne zaman yukardaki gibi öğrenci aç parantez kapa parantez yaptığınızda buradaki bilgileri tutacak bellekte bir alan açılıyor.
- Bu alan içerisinde ogrNo var, ogrAd var , aktifMi gibi değerler var.
- ve siz buraya gidip yeni bir öğrenci oluşturmak istediğinizde hasan diyelim buna da 
``` 
Ogrenci hasan = Ogrenci();
```
- bu sefer emrenin oluşturduğu kutunun yanına bir tane de hasan diye kutu açılıyor. ve bu yeni kutunun içerisinde de aynı alanlar olacak.
- Gördüğünüz gibi taslaktan ardı ardına örnekler üretiyoruz.
- Hani arabanın taslağı bitmiş , seri üretime geçilmiş gibi..
- Şimdi ogrNo,ogrAd,aktifMi gibi ifadelerin içerisinde varsayılan olarak atadığımız değer dışında  bir değer yok.
- Ben bunlara nasıl erişeceğim, bunlara nasıl atama yapacağım?
- bu ismi oluşturduktan sonra emre. dediğinizde bakın ilgili alanlar hatta hatta methodlar buraya geldi.
- mesela
```
Ogrenci emre =Ogrenci();
emre.ogrAd="emre altunbilek ";
Ogrenci hasan = Ogrenci();
emre.ogrNo= 292; 
emre.aktifMi=true; 
```
- Burada da şu oluyor; emre dediniz kutu açtınız ya aslında bu emre bu kutunun başlangıç adresini tutuyor. 
- Hasan dediğinizde diğer kutunun başlangıç adresi tutuluyor.
- emre. hasan. dediğinizde ise bellekteki o alana erişip ilgili değerlere müdahale ediyorsunuz.
- Şuan için bunları bilmek yeterli.
- Öğrenci numarasını ayşe için değiştirdiğinizde gidipte emre ve hasanın öğrenci numaraları değişmeyecektir.
- buradaki bu yapımıza sınıf class
```
class Ogrenci{
    // ayrıca buradakilere de instance varribles diyoruz.
    int ogrNo= 1;
    String ogrAd="";
    bool aktifMi= true;
}
```
- buradaki bu örneklere de ne diyoruz nesne yada instance 
```
main(List<String>args){
    int sayi=5;
    Ogrenci emre = Ogrenci();
    emre.ogrAd="emre altunbilek ";
    emre.ogrNo=292;
    emre.aktifMi=true;
    Ogrenci hasan= Ogrenci();
    Ogrenci ayse = Ogrenci();
}
```
- Gördüğünüz gibi bir fonksiyonda tanımlayabiliyoruz.
```
class Ogrenci{
    int ogrNo=1;
    String ogrAd=1;
    bool aktifMi=true;
    
    void ddersCalis(){
        print("Öğrenci ders çalışıyor.");
    }
}
```
- Genel olarak nesnelerimizin oluşturulma süreçleri böyle.
- ve burada küçük hemen notlarımızı da söyleyelim eğer konuyu anladıysak, ben Ogrenci ayse = Ogrenci(); diyebileceğim gibi hani biz int sayi=5; diyorduk. Aynı şekilde var sayi=2 diyebiliyorduk ya benzer mantık burada da geçerli.
- var kemal = Ogrenci();
- diyip öğrenci nesnesi olduğunu söyleyebilirim. var demenin de herhangibir sıkıntısı olmayacak.
- peki şunu diyebilirmiydik her türlü  verimizin yerine geçen dynamic veri tipimiz vardı. 
- buna da dyamic yunus = Ogrenci();
- üzerine geldiğimde dynamicde olsa en azından öğrenci olarak oluşturabiliyorum.
- yunus. dediğimde bakın gelmiyor detaylarına daha sonra gireceğiz. o yüzden var kullanmak daha mantıklı.
- genel olarak sınıf ve nesne yapımız bu şekildeydi.
- Bir sonraki derste bunula ilgili öğrenmemiz gereken şeylerle devam edeceğiz.
