import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('My To Do List App', 
          style: TextStyle(fontWeight: 
          FontWeight.bold),
          ),
          ),
          ),
      body: Center(
        child:ListView(
          // reverse: true, listeyi tersine çevirmek için kullanılır.
          children  : [ Column(
            children: [
            _tekListeElemani(),
            _tekListeElemani(),
            _tekListeElemani(),
            _tekListeElemani(),
            ]
          ),
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text('Hi Button!'),
            ],
          ),
          ElevatedButton(
            onPressed: (){}, 
            child: const Text('Button')),
        ],),
      ),
    );
  }

  SingleChildScrollView singleChildKullan() {
    return SingleChildScrollView( //Scrolling method.
        child: Column(children: [
        _tekListeElemani(),
        _tekListeElemani(),
        _tekListeElemani(),
        _tekListeElemani(),
        _tekListeElemani(),
        _tekListeElemani(),
        _tekListeElemani(),
        _tekListeElemani(),
        _tekListeElemani(),       
      ],
    ),
      );
  }
  Column _tekListeElemani() {
    return Column(
        children: [
        Card(
        color: Colors.orange.shade50,
        shadowColor: Colors.orangeAccent,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
        child:const ListTile(
          
          leading: CircleAvatar(child: Icon(Icons.add),) ,
          title: Text('First Note'),
          subtitle: Text('Small - subtitle'),
          trailing: Icon(Icons.picture_as_pdf_rounded),
          iconColor: Colors.redAccent,),),
       const Divider(
            color: Colors.redAccent,
            height: 10,
            thickness: 2,
            indent: 60,
            endIndent: 60,
          ),
        ]
      );
  }
}