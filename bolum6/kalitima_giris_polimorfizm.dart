/**
 * KALITIM INHERITANCE : İki adet sınıf düşünelim. Birinin adı Ebeveyn diğerinin adı Çocuk olsun. 
 * Ebeveyn sınıfının özelliklerini anne+baba’nın işlevleri oluşturmaktadır. 
 * Çocuk ise bazı özellikler bakımından anne babaya benzerlik göstermektedir. (saç rengi, göz rengi) 
 * Bunların yanından çocukta anne ve babasında olmayan bazı özelliklerde yer alabilir.  ( Anne baba kısa boylu iken çocuğun uzun olması). 
 * Ebeveyn gibi üst sınıflara süper sınıflar denir.  Bunlardan türetilen alt sınıflara alt sınıflar denir. 

Dart da kalıtım bir sınıfın kendine ait özellikleri başka bir sınıfa aynen aktarması ya da bazı özellikleri diğer sınıflara izin vermesidir.

Extends anahtar kelimesi: bir sınıfa ait özelliklere başka bir sınava miras almak için kullanılır.

Her alt sınıf doğrudan bir tane süper sınıfa sahip olabilir. 
Her alt sınıf süper sınıfın özelliklerini taşır.  
Süper sınıftan alınan bazı özellikler değiştirilebilir. Aynen kullanılmak zorunda değildir. 
Kalıtımın basamakları çok uzun olmamalıdır.  Bu kötü tasarıma neden olur.

Kalıtımın Faydaları
Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.  
if, else, switch gibi kontrol ifadelerinin oolduğu sınıflar kötü tasarım örnekleridir. Bunun yerine kalıtım tercih edilmelidir.

Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
 */

main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  AdminUser user4 = AdminUser();

  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser(); //upcasting yukarı cevrim

 }
class User {
// tüm alt sınıfların ortak özelliği bu satırlar. 
  String email = "";
  String password = "";

  void girisYap() { //function
    print("Parent user giriş yaptı");
  }
}
class NormalUser extends User { // parent
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }
  @override  //annotations. USer clasındaki giriş yap fonksiyonunu ezer aşağıdaki fonksi.
  void girisYap() { // yapabildiği yetki alanındaki işlem
    print("Normal user giriş yaptı");
  }
}
class SadeceOkuyabilenNormalUser extends NormalUser { // Normal Userdan türetilmiş yenii bir sınıf.
  void adiniSoyle() {
    print("Ben sadece okuyabilirim");
  }
  @override // tekrar belirlenmesi.
  void girisYap() {
    print("SadeceOkuyabilenNormalUser giriş yaptı");
  }
}
class AdminUser extends User { // Userdan türetilmiş bir class.
  @override 
  void girisYap() {
    print("Admin user giriş yaptı");
  }
  void toplamKullaniciSayisiniGoster() {
    print("Toplam user sayısı 20");
  }
}
