## Kalıtım
#### Bir sistem tasarlıyalım sistemde kullanıcılarımız var.
#### sistemi kullanan kimler olabilir bir normal userlarımız olabilir.Birde Admin userlarımız olabilir.
```
main(List<String>args ){
}
 class NormalUser{
    String email="";
    String password="";
    void girisYap(){
     print("Normal User giriş yaptı");
     }
 }
 class AdminUser{

 }

```
#### Admin user şimdi bir kullanıcı admin user olduğunda ilgili email,password ve giriş yapma özellikleri adminuserda olmayacak mı? -olucak bunları direkt olarak ekleyelim.
#### Benzer şekilde adminin daha fazla yetkisi olabilir. Mesela toplam kullanıcı sayısını göster.

```
main(List<String>args ){
}
 class NormalUser{
    String email="";
    String password="";
 void girisYap(){
    print("Normal User giriş yaptı");
  }
 }
class AdminUser{
   String email="";
    String password="";
 void girisYap{
    print("Admin User giriş yaptı");
  }
  void toplamKullaniciSayisiniGoster(){
      print("Toplam user sayısı :20");
  }
}
```
#### Şimdi bu koda baktığımda çok mu yoruldum hayır. Normal userdan kopyaladım admin usera yapıştırdım.
#### Fakat önemli olan minimum sayıda kod yazmak. Neden? - Yarın birgün birşeyler değiştiğinde yeni bir ek geldiğinde bunlara müdahele etmek, yeni isyekler geldiğinde kodalarıma en az değişiklikle isteğe uygun hale getirebilmek.
#### Kod tekrarından kaçınmak gibi durumlarda üstte yaptığımız yapı hiçde hoş olmuyor.
#### Birşeyleri kopyala-yapıştır yapıyorsanız orada mutlaka birşeylerin yanlış olduğunu anlamanız lazım.
#### Peki ben burda iki yapı içinde ortak olan değerler var. Birebir aynı bunları ortak bir çatı altında toplamam gerkiyor.
#### Bunuda işte kalıtımla yapıyoruz.
#### Benim sistemimde normal user var,admin user var. Bunları diyorum ki class diye user diye bir sınıfın altında toplayamammı?
#### Her ikisinde de giriş yap ve email password alanları ortak o halde ben bunları user classında tanımlarım.Diğer taraflarda tanımlamam.

```
 main(List<String>args ){
}
 class User{
         String email="";
    String password="";
 void girisYap(){
    print("Normal User giriş yaptı");
    }
 }
 class NormalUser{

  
 }
class AdminUser{
   
  void toplamKullaniciSayisiniGoster(){
      print("Toplam user sayısı :20");
  }
}
```
#### Adminuserımızın kendine has bir özelliği var.Mesela normal userımızında kendine has bir özelliği olsun. Adminin yapmak istemeyip normal userın yapabileceği ne olabilir bir düşünelim. mesela arkadaşlarını davet etme. Admin userlar genellikle sisteme başkalarını davet etmez onların amacı sistemş kontrol etmektir.Böyle bir mantık yürütürsek;
```
 main(List<String>args ){
}
 class User{
         String email="";
    String password="";
 void girisYap{
    print("Normal User giriş yaptı");
    }
 }
 class NormalUser{
    void davetEt(){
        print("Normal user arkadaşını davet etti.");
    }
 }
class AdminUser{
   
  void toplamKullaniciSayisiniGoster(){
      print("Toplam user sayısı :20");
  }
}
```
#### Koduma baktığımda üç farklı sınıf oluşturdum. Ve düşündüğümde aslında her normal userın aslında bir user, her admin userın bir user olduğu gibi mantıksal ilişki ilişki olduğunu gördüm. İşte bu gibi durumlarda diyoruz ki normal user User sınıfından türetilebilir.Nasıl yapıyoruz bunu extend diyoruz. User diyoruz. Aynı mantıkla admin:Usera gidip extend User dediğimde 
#### User sınıfı bizim ana sınıfım, AdminUser ve NormalUser benim çocuk sınıflarım olmuş oluyor. ve bu iki sınıf ne olmuş oldu User sınıfdan kalıtılmış oldu.
```
 main(List<String>args ){
}
 class User{
         String email="";
    String password="";
 void girisYap(){
    print("Normal User giriş yaptı");
    }
 }
 class NormalUser extend User{
    void davetEt(){
        print("Normal user arkadaşını davet etti.");
    }
 }
class AdminUser extend User{
   
  void toplamKullaniciSayisiniGoster(){
      print("Toplam user sayısı :20");
  }
}
```
