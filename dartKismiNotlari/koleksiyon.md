## Koleksiyonlar notları:
- Köşeli parantezler görürsek aklımıza setler, süslü parantezleri görürsek aklımıza mapler gelsin.
- spreads operator: iki listenin elemanlarını sırayla yazıyor.
- örnek : 

-var tekSayilar=[1,3,5,7];
-var ciftSayilar=[2,4,6,8];
-var sonListe=[...tekSayilar, ...ciftSayilar]; 
-print(sonListe);  //çıktısı : [1,3,5,7,2,4,6,8] olur.

- spreads operatörü  maplerde de kullanabiliriz.
-var map1={'ad': 'emre'};  
-var map2={'yas: '22'};
-var sonMap={...map1 , ...map2};
-print(sonMap); // çıktısı:{ad:emre,yas:22}

- Setlerde eleman tekrarı kabul edilmiyordu. Her eleman bir kere saklanıyordu. Bunu unutmayalım.
-var set1=['emre'];
-var set2=['ayşe];
-var set3=['hasan'];
-var set4=['emre'];
-var sonSetYapisi=[...set1, ...set2, ...set3, ...set4];
-print(sonSetYapisi); //çıktı [emre,ayşe,hasan]


