import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';



class MyDataPage extends StatefulWidget {
    const MyDataPage({super.key});

    @override
    State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
            ),
            drawer: myDrawer(),
            body: ListView.builder(
              itemCount: SimpanData.contain.length,
              itemBuilder: (context,index) {
                final item = SimpanData.contain[index];
                return ListTile(
                  title:Text(item.judul),
                  subtitle:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[Text(item.nominal.toString()), 
                  Text(item.tipe),
                  Text(item.date.toString())]),
                  
                );
              },
            ),
        );
    }
}