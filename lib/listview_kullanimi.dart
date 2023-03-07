// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ListViewKullanimi extends StatelessWidget {
 ListViewKullanimi({super.key});

  List <Ogrenci> tumOgrenciler = List.generate(500, (index) => Ogrenci(index+1, 'Ogrenci adi ${index+1}', 'Ogrenci soyadi ${index+1}'),
  ); //ogrenci object oluşturma

  @override
  Widget build(BuildContext context) { //build method
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ögrenci listesi'),),
        body: ListView.builder( 
          itemBuilder:(BuildContext context, int index){
              var oankiOgrenci = tumOgrenciler[index];
              return Card(
                color: index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
                child: ListTile(  onTap:() {
                   print("eleman tiklandı: $index");},
                title: Text(oankiOgrenci.isim),
                  subtitle: Text(oankiOgrenci.soyisim),
                  leading: CircleAvatar(
                    child: Text(oankiOgrenci.id.toString()),
                  ),
                ),
              );
          } ),
    ); 
  }
  ListView klasikListView() {
    return ListView(
        children: tumOgrenciler.map((Ogrenci ogr) => ListTile(
          title: Text(ogr.isim),
          subtitle: Text(ogr.soyisim),
          leading: CircleAvatar(child: Text (ogr.id.toString()),),
        )).toList(),
      );
  }
}
class Ogrenci {
  final id;
  final String isim;
  final String soyisim;

  const
  Ogrenci(this.id, this.isim, this.soyisim);
  }
