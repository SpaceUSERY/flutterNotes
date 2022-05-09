## Factory kullanarak nesne üretme

#### bu derste factory kurucu methodlardan bahsedeceğiz.
### Ogrenci classımızı oluşturduk. birtane de parametre alan constructor oluşturalım.
```
main(List<Strings>args ){
    
}
class Ogrenci{
    int id =0;
    String isim="";
Ogrenci(this.id,this.isim);
}
```
#### bunu yaptığımda ne oluyor ben emre diye bir öğrenci oluşturduğum zaman mutlaka id ve ismi bu sıra ile vermem gerkiyor.
```
main(List<Strings>args){
    Ogrenci emre =Ogrenci(5,"emre");
}
```

#### şimdi burada aslında ne oluyor ?
#### bir nesne ürettiğimzde parametreli constructor çalışıyor ve bir öğrenci nesnesi return ediyor.ve siz bunu alıp maindeki değişkende saklıyor. 
#### constructurumuza gidip print diye birşey yazabiliriz ama return diye birşey yazamayız.
#### varsayılan kurucularda isimlendirilmiş kurucularda bu yasaktır.
#### Şimdi ben bunu çalıştırdığımda bir nesne üretilip emreye atandığında kurucu method tetiklendi ve print fonksiyonuyla ekrana çıktı aldım.
#### birtanede idsiz olan değerler için isimlendirilmiş kurucu method yazalım.

```
main(List<Strings>args ){
    Ogrenci emre =Ogrenci(5,"emre");
    Ogrenci hasan= Ogrenci.idSiz("hasan");
}
class Ogrenci{
    int id =0;
    String isim="";
Ogrenci(this.id,this.isim){
    print("Varsayılan kurucu method çalıştı");
}
Ogrenci.isSiz(this.isim){
    print("İsimlendirlmiş kurucu method çalıştı");
}
}
```
#### Şimdi burada dikkat etmemiz gereken,farkında olmamız gereken birşey var. Bu kurucular çalıştığında her ne kadar burada return olmasada aslında buraya bir öğrenci nesnesi return ediyorki ben onu alıp hasana koyabiliyorum.
#### yani biz şöyle bir fonksiyon düşünelim toplam diyelim. bu fonksiyon geriye 3+5i döndürecek şekilde return edeyimki sayı değişkenin içine koyabileyim.
```
main...{
int sayi= toplam();
}
void toplam(){
    return 3+5;
}
```
#### bu toplam fonksiyonu çalışacak tıpkı kurucu fonksiyonlar gibi geriye 3+5 8 değerini döndürecek ki ben bunu sayı değişkenin içerisine atayabileyim.
#### construclar özel fonksiyonlar ve aslında arka planda bu return işlemini yapıyor. peki ben burada return kullanmak istiyorsam ve bu retrun'lara göre nesne üretmek istiyorsam ne yapacağım.
#### konuyu anlatmak adına örneği çok basit tutacağım ve belki mantıklı gelmeyecek ama bu birçok yerde karşımıza çıkabilir. cathcleme yaparken singledın için. bunlar bilinmiyor olabilir ama flutter kısmında karşımıza bunlar çıkacaktır. nedir bu ?
#### factory diyoruz sonrada sınıfımız adını yazıyoruz ismini kendimiz beliriyoruz.
#### bunun güzelliği şu eğer diyorum id değeri sıfırdan küçükse veya bana girilen isim değerinin uzunluğu sıfıra eşitse eğer böyle bir durum varsa bu öğrenci nesnesini oluşturuken return diyip şöyle bir öğrenci nesnesi oluştur diyebilirsiniz.
#### değilse gelen parametrelerle return diyip gelen parametrelerle id ve isim değerini kullan diyebilirsiniz.
#### klasik önceden öğrendiğimiz kurucu methodlarda böyle bir mantık yürütemiyordunuz. burada ise gelen id'ye bakacak 0'dan küçük mü veya isim değeri sıfırdan büyük mü buna bakacak yada şöyle yapalım isimle uğraşmayalım (if parametresindeki isimle ilgili şartlar silindi.)
#### id 0'dan küçükse id değerine 5 ata isim değerini aynen kullan gibi gördüğünüz gibi return ifadesini kullanabiliyorum.
```
factory Ogrenci.factoryKurucusu(int id,String isim){
    if(id<0){
    return Ogrenci(id,isim);
    } else
      return Ogrenci(id,isim);
}
```
#### maine gidip; ayse isimli öğrenci üretip idsine 9 atayacağım. ve printle ekrana yazdıracağım.
```
main {... 
Ogrenci ayse =Ogrenci.factoryKurucusu(-9,"ayse");
print(ayse.id);
print(ayse.isim);
}
```
#### -9 atamıştım gördüğümüz gibi id değeri 0'dan küçük olduğu için geriye  idsi 5 olan ve ismi ayse olan bir nesne üretip koydu. 
#### bunun güzelliği burada çok farklı kullanımları var ama şuan için bunu bilmek yeterli. factory yapısı sayesinde biz çok güzel nesneler üretebiliyoruz. ama bunun diğerlerinden farkı ne - return kullanabiliyoruz.
