/*
SORU2: Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı
Eğer PI sayısı verilmediyse varsayılan olarak 3,14 alarak hesaplama yapın.
 */
import 'dart:io';
void main() {
  double pi = 3.14;
  print("Lütfen dairenin yari çapini giriniz: (r değeri) : ");
  int r = int.parse(stdin.readLineSync()!);
  double alan = daireHesapla(pi, r);
  print(" Dairenin alani = $alan ");
}


daireHesapla(a,b)
{
  double alan;
  alan = a *(b*b);
  return alan;
}