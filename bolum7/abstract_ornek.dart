main(List<String> args) {
  Veritabani db = OracleDB(); //polimorfizm - ortak çatı ismi Veritabanı olursa Oracle dan firebase'e geçiş kodlar bozulmadan geçilebilir. 
  db.userDelete();   // soyut nesnelerle çalışmanın önemi
  db.userSave();
  userGuncelle(db);
}
void userGuncelle(Veritabani veritabani) { //fonksiyon
  veritabani.userUpdate();
}
abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
  void urunGuncelle();
}
class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("oracle dbden user silindi");
  }
  @override
  void userSave() {
    print("oracle dbye user kaydedildi");
  }
  @override
  void userUpdate() {
    print("oracle dbdeki user güncellendi");
  }
  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}
class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("firebase dbden user silindi");
  }
  @override
  void userSave() {
    print("firebase dbye user kaydedildi");
  }
  @override
  void userUpdate() {
    print("firebase dbdeki user güncellendi");
  }
  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}
