-main methoduna geldik 
debugPrint('main metodu çalıştı');
yazdık 
#### Hot restart Hot Reload Farkı:
- Hot Restart: Uygulama mainden başlar.
- Hot Reload: Sadece widgetların buildlerini çalıştırıyor.

Örneğin yaptığımız sayaç uygulaması için ekrandaki sayacı nasıl arttırırız?
- sayac diye bir değişken tanımlarız.
- butona her bastığımızda sayac değişkenin değerini bir arttırız.

- Eğer kodlarımız bir önceki videoda yaptığımız gibi kaldıysa MyHomePage statless widgetta kaldığı için derleyicimiz bize kızacaktır.

-O halde ne yapmalıyız?
- Tam burada stateful widget devreye girecek fakat öncesinde state kelimesinin anlamını bilmeliyiz.
- State dediğimiz şey uygulamamızın o anki durumudur.
- Eğer siz belirli durumlara göre ekranın durumunu bu stateyi değiştirecekseniz, artık orda statless widget işe yaramaz. Statefull widgeta geçmemiz gerkeir.
- Mesele bizim yaptığımız uygulamada butona bastığımda ekrandaki sayının değişmesi state'in değişmesi anlamına geliyor. 
- Ohalde stateful widget kullanmalıyız.
- Command+. yapıp en kolay yolla bu widgetı statefull widgeta çevirebiliriz.
- 
