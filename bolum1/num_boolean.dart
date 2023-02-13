/*num : tamsayı veya ondalıklı bir ifadeyi saklayabilir
int = tamsayıları saklarken kullanılan veri türüdür 
hexadecimal değerleri de saklayabilir. 0xAABBCC

double = ondalıklı ifadeler için kullanılan veri türüdür. 
exponents değerli saklayabilir, 1.42e5

var anahtar kelime ile de tamsayı veya ondalıklı ifade saklanabilir.var olarak int deger atandıysa sonrasında double değer atanamaz

değişkenlerimize ilk değerleri atamak zorundayız, null değer kabul edilmez.
null değerlerin kabul edilmesini istiyorsak int?, double? bool? gibi farklı değişken tanımları yapmamız gerekir.

boolean = true/false değerleri alır
*/
void main(List<String> args) {   // main fonksiyonu kodların nereden başlayacağını gösterir. önemlidir.
  int yas = 34;
  print(yas);
  yas = 44;
  print(yas);

  num yil = 1988;   //num integer da olur double da.
  print(yil);

  double sayi = 52;
  print(sayi);

  int kilo = 84.6.toInt(); //rakamı integer a dönüştürerek kilo değişkenine atar.
  print(kilo);

  var sayi2 = 56; // sayi2 integer olarak atandı var ile. daha sonrasında string veya double yapılamaz.

  int numara; // değişken tanımlı fakat null değer. initialize edilmemiş.  ilk değeri var bundan kaçın.! null safety
  numara = 9;
  print(numara + 9);

  int? s1 = null;
  s1 = 9;
  print(s1 + 5);

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);
}
