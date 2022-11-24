import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart';
import 'package:counter_7/model/mywatchlist.dart';



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
                flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                 Colors.blue,
                 Colors.red
                ])          
          ),
        ),
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
                  //Text(item.date.toString().substring(0,10))
                  Text(
                    DateFormat(
                      'EEEE, d MMMM, yyyy'
                    ).format(item.date),
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left),
                  ]),
                  
                );
              },
            ),
        );
    }
}