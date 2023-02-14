//Örnek 1: İki notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösteren algoritmayı yapın.

import 'dart:io';

void main(List<String> args) {
  int birinciNot;
  int ikinciNot;
  print("Birinci notu lütfen giriniz:");
  birinciNot = int.parse(stdin.readLineSync()!); 
  print("İkinci notu lütfen giriniz: ");
  ikinciNot= int.parse(stdin.readLineSync()!); //standard input(stdin) reads a line from stdin.

  double ortalama = (birinciNot+ikinciNot)/2;
  print("Not ortalamaniz $ortalama'dir.");
  if (ortalama < 50)
  {
    print(" İlgili dersten kaldiniz.");
  }
  else
  print("İlgili dersten başarı ile geçtiniz!") ;
}

//Örnek 2: Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazın. */
import 'dart:io';

void main(List<String> args) {
  print("Lütfen ürün fiyatini türk lirası cinsinden giriniz: ");
  int urunFiyati = int.parse(stdin.readLineSync()!);
  double kdv = urunFiyati+ (urunFiyati*(18/100));
  print("KDV dahil edilmiş ürün fiyatı: $kdv türk lirasıdır.");
}
