/*
SORU1: Parametre olarak  bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün..
 */
import 'dart:io';
void main()
{
     print("Lütfen bir sayı giriniz! : ");
     int? a = int.parse(stdin.readLineSync()!);
     double Toplam = ciftSayi(a);
     print("Toplam değeri : $Toplam ");
}

ciftSayi(a) {
     double toplam = 0;
     int i;
     for ( i = 0 ; i <= a ; i++ )
     {
     if ( i % 2 == 0)
          toplam = toplam + i ;
     else
          toplam = toplam + 0; 
     }
     return toplam;
}