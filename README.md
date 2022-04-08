# Flutter Notları

##### Widget Nedir?
- Flutterdaki herşey widgetdlardan oluşur.
- Widget dediğimiz kavram; Bize hazır olarak verilmiş bileşenlerdir.
- Her arayüz elamanı gibi birçok yapı birer widget olarak geçer
- Biz bu widgetları kullanarak kolay ve hızlı şekilde uygulama geliştirebiliriz.
- Yeri gelecek widget içinde widget kullanacağız. Bu sebeple widget yapısının kavramak önemli.
- Her bir yapı aslında bir widgettır ve bu widgetların özelliklerini bilmeliyiz. 
- İç içe widgetlarda farklar vardır. Bazı widgetlar içerisine bir widget kabul ediyorken bazıları birden çok widgetı kabul ederler.
- Örneğin column diye bir widget var,bu widget içerisine birden çok widget kabul ediyor.(Colomn widgetını alt alta hizalanan bir liste gibi düşünebiliriz. ) Böylece birden fazla elaman alabileceğini kolaylıkla anlayabiliriz. Fakat container widgetını bir kutu gibi düşünelim ve sadece bir tane eleman ekleyebiliriz.
##### ____________________________________________________________________________________________________________________________ 
- En çok kullanılan widgetlar; MaterialApp, Scafold ve AppBar widgetlarıdır.
- MaterialApp : 
- * En zengin widgetlardan biridir.
- * Main sınıfında projemizi oluşturduktan sonra run app metodu içinde genellikle bir material app veririz.
- * Diğer widgetları kullanabilmek için özellikle yönlendirme işlemi için MaterialApp widgetına ihtiyaç duyarız. 
- * Uygulamamızı oluştururken, en dış kısmı olarak bu widgetı düşünebiliriz.
- Ardından Scaffold Widgetı : 
- * Ekran demektir. Scaffold ile ekranımızı oluştururuz.
- * Eğer scaffold oluşturmazsak, içerisine eklersek ekleyelim siyah bir ekran görürüz.
- * Scaffold ile beyaz bir ekran oluşturduktan sonra bunu şekillendirmek tamamen bize kalıyor.
- App Bar Widgetı: 
- * AppBar widgetı da, Scaffold ile oluşturduğumuz ekranın içinde, üst kısımda oluşturduğumuz bir yapıdır.
- * Burada uygulamanın adını yazabilir, bu üstte çıkan çizgi gibi alanın rengini değiştirebiliriz.
 ##### State Nedir?
 - State, oluşturduğumuz uygulamanın durumu olarak tanımlanabilir. 
 - Ekranın anlık görüntüsüdür. 
 - Bir ekranın görüntüsünü yani State’i etkileyen birçok widget vardır. 
 - Örnek vermek gerekirse: yazılar, resimler yine en basit örnekleridir. 
 - State değiştiğinde, ekrandaki görüntü de değişir. 
 - O yüzden, kullandığımız widgetlara göre state seçimini doğru kulanmak önemlidir.
##### Stateful ve Stateless Widget farkı nedir?
- Uygulamamızı Stateful veya Stateless widget sınıflarıyla oluşturuyoruz.
-  Bu sınıflar da birer widgettır. Fakat neye göre Stateless veya Stateful widget sınıfı oluşturuyoruz, bu biraz kafa karıştırabiliyor. 
-  Şimdi sırayla incelediğimizde aslında çok kolay olduğunu beraber görebiliriz.
- Öncelikle anlamlarına bakarak ip ucu yakalayabiliriz.
- Stateless = Durumsuz,   Stateful = Durumsal 
- Eğer, kullanacağımız ekranda değişen herhangi bir yapımız yoksa bunu Stateless widget kullanarak oluştururuz.
-  Sabit yapılarla, durumsuz bir haldir. Yani değişen bir şey yoktur. Örnek olarak, koyacağımız bir başlık yazısı gibi değişmeyen widgetlarla, stateless widget kullanırız.
-  Eğer, kullanacağımız ekranda widgetlarda değişiklik olacaksa bunu Stateful widget kullanarak oluştururuz. 
-  Değişken yapılarla, durumsal bir haldir yani belirli durumlara sahiptir. 
-  Örnek olarak, ekranda bir saat göstermek istersek veya sayaçlı bir sistem gibi sürekli değişen değerlerde, stateful widget kullanırız.
###### Teşekkürler Kadriye Macit https://www.mobilhanem.com/flutter-widgetlar-ve-stateless-stateful-widget-farki/
