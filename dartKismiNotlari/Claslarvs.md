## Sınıf ve nesne kavramları
#### 
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
```
class Ogrenci{
    
}
```