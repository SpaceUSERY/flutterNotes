##  https://www.udemy.com/course/sifirdan-flutter-ile-android-ve-ios-apps-development/learn/lecture/13152050#overview
- 
- Main fonksiyonumuz geri dönüş değeri olmadığı için void olarak tanımlanır. void main(){} şeklinde normal parantezlerin içerisine parametre girilmez.
- Mainin içerisine run app dediğimiz yapı bizim flutter projemizi ayağa kaldıran yapıdır. Ve bu bizden bir widget bekler.
- My app dediğimiz yapının bizden istediği widgetı statless widget olarak oluşturuyoruz.
- Daha sonra mainin içerindeki run app kısmına (benden widget beklenen kısma ) myapp den bir nesne üretip yollayabilirim.
- yaptığımız projede myapp dediğimiz yapı statless bir widgettan türetiliyor. command basıp üzerine tıklarsak; statless widgetın bir soyut sınıf olduğu,ana sınıfınında bir widget olduğunu görebiliriz.
- Ve statless widget oluşturduğumuzda mutlaka build methodunu yazayım diye boş bir şey oluşturuyor.
- Bunun sebebi ne peki?
- Statless widget soyut bir sınıf, ben bundan direk olarak bir nesne üretemem.
- bundan bir alt sınıf bir nesne üretmem gerekiyordu onun adı da my app oldu.
- Peki build methodu neden geldi?
- Demekki build methodu soyut sınıfta mutlaka yazılsın diye belirtilmiş.
- Ve bu soyut sınıf bunu nasıl yazacağını bilmiyor.
- Build bize bir method döndüren fonksiyon.
- Buildcontext nedir?
- bölümün sonunda anlatılacak, bu her yerde karşımıza çıkacak,
- 
-Flutter'da materialApp diye bir widget verilmiş ve ben bunu kullandığımda uygulamamda yapmam gereken birsürü şey içinde varsayılan olarak yapılmış.
- ve material appda mutlaka yazmamız gereken home diye bir parametre var. Buda bir widget alıyor.
- Home ne işe yarıyordu? - Benim uygulamamın ilk açılış sayfası.

-My app yapısı bizim uygulamamızın tamamını temsil ederken home açılış sayfasını temsil ediyor . home'a gelip ne yapmamız gerekiyor?
- myhomepage diye bir şey yazdık.

-material appa gelip ne diyebilirdik title, theme 

-daha sonra myhome page diye statless widget oluşturalım.
- oluşturduğumuz my home page statless widgetı da boş bir container döndürüyormuş.
- child diyip içerisine bir text koyalım (ekranda en azından birşeyler görmek için)

- Diğer derslerden hatırlayalım biz material appın içerisine ne yapıyorduk?
- my appın içerine bir scaffold veriyorduk.
- -scaffold bizim için birsürü sabit tanımlıyor.(yani uygulamamın iskeletini veriyor)
- scaffoldu ekledikten sonra bomboş tertemiz bir ekran bizimle oluyor.
- scaffold childinin altına bir appbar tanımlayabilirim.
- appBar:AppBar(), diyorduk
- - appbar birsürü değer alıyor bizim kullanabileceğimiz. fn+ctrl+space ile görebiliyoruz bunları.
- mesela title kullandık.
- title benden ne bekliyor? - widget
- yani ben direk gelip title'a string değer yazamam.
- içerisine string değer koyacağım bir widget tanımlamalıyım. oda text
- appBar : AppBar(title : Text('My Counter appbar ')),


- Build dediğimiz yapıya koyduğumuz yapılar direk çiziliyor ve bu değerler kesinlikle değişmiyor.
- Yani ekrana konulan şey; bir dış etkenle, bir butonun tıklanmasıyla veya internetten veri gelmesiyle veya veri tabanından veri gelmesiyle değişmeyecekse biz onları statless widget yaparız.
- şimdiye kadar yaptıklarımız dursun 

-scaffoldumzun birde body kısmı vardı. app bar ile başlayıp ekranın sonuna kadar ilerliyordu gelin buraya bir center koyalım.bu center widgetına da child diyip column diyoruz. coloumn dememizin sebebide altlı üstlü elemanlar koymak.
- bunlarda text olacak. colomn un children yapısına koyuyoruz

- childern neydi?
- - içerisnde widgetlar tutan bir listeydi ondan dolayı birinci widgetımızı text diye yazalım. Text('Butona basılma miktarı'),
- dedik bir tane de hemen altına Text('0'),
- Peki bu yazığımız textler neden emüülatörde görünen uygulamamızda en tepeden başladı? 
- Eğer center body 'imizin herhangibir height weight faktörü yoksa parrentı kadar yani buradaki scaffoldun bodysi kadar yer kaplar. bu center widget.
- içerisinde de column 'umuz var. colomn da da herhangibir boyut yok.
- - bu sebeple gitti uygulamamızın en tepesinden başladı
- kaç tane text olursa bu aşağıya doğru ilerleyecek.

-_TEKRAR_
- statless widgetımız build metodu bir kere çalışır bunlar ekrana yazılır ondan sonraki değişmelerden bu etkilenmez

