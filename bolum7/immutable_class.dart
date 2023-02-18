// İmmutable: değişmez Final ve cost ile atanırsa bir kez set edilir bir daha değiştirilemez.
//Final ve const ne zaman tercih edilir?
// cost ile değiştirilemeyen listeler yapılabilir. Bellek dostu yapılar oluşturulabilir.
//final ile içi değiştirildiğinde ise adresleme yaptığı bilginin konumu değişir. 
// final'ı runtime de değer geliyorsa kullanırız. const çalışmadan önce değeri bilinen yapılarda kullanılır. Final ise run time sonrası bir veri gelecekse kullanılır.

main(List<String> args) {
  const Student emre = Student(5, "emre");
  final Student emre2 = const Student(5, "emre");
  var emre3 = const Student(5, "emre");
  emre3 = const Student(5, "emre");

  if (emre == emre3) { // eşit değildir çünkü gösterdiği içerik aynı olsa dahi adress ettikleri bellek no farklıdır.
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim); // kurucu atıyoruz.
}
