class Ogrenci {
  int id;
  int notDegeri;

  Ogrenci({this.id = 1, this.notDegeri = 1});
  // null değer olursa diye hata almamak için varsayılan değer atadık.

  @override
  String toString() {
    // TODO: implement toString
    return "ID : $id Not Değeri: $notDegeri";
  }
}
