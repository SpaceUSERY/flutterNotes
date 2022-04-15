void main(List<String> args) {
  /***
   *Set yapısı;
    = sıra söz konusu değil.
    = her elemen yalnızca bir sefer olur.

   

   */
  Set<String> isimler = Set();
  isimler.add("emre");
  isimler.add("hasan");
  isimler.add("hans");
  isimler.add("emre");
  isimler.add("hasan");
  for (String s1 in isimler) {
    print("isim:$s1");
  }


  if(isimler.contains("emre")){
    
  }
}
