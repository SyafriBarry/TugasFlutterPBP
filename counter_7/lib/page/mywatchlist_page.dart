import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:http/http.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/api/fetch.dart';
import 'package:counter_7/page/mywatchlist_detail.dart';


class WatchListPage extends StatefulWidget {
  const WatchListPage({Key? key}) : super(key: key);

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
          centerTitle: true,
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
        body: FutureBuilder(
            future: fetchToDo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watchlist :(",
                        style:
                            TextStyle(color: Color.fromARGB(255, 0, 152, 253), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => ListTile(
                          trailing: Checkbox(
                            value: statusMovie[index],
                            onChanged: (bool? newValue) {
                              setState(() {
                                statusMovie[index] = !statusMovie[index];
                                snapshot.data![index].watched = (newValue!)? 'Yes': 'No';

                              });
                            },
                          ),
                          title: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WatchListDetail(
                                          data: snapshot.data![index])));
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              padding: const EdgeInsets.all(20.0),
                              decoration: statusMovie[index]
                                  ? BoxDecoration(
                                      color: Color.fromARGB(255, 84, 252, 90),
                                      borderRadius: BorderRadius.circular(15.0),
                                      boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromARGB(255, 112, 149, 235),
                                              blurRadius: 5.0)
                                        ])
                                  : BoxDecoration(
                                      color: Color.fromARGB(255, 239, 38, 24),
                                      borderRadius: BorderRadius.circular(15.0),
                                      boxShadow: const [
                                          BoxShadow(
                                              color: Colors.yellow,
                                              blurRadius: 5.0)
                                        ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${snapshot.data![index].title}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 24, 23, 23),
                                      decorationColor: Colors.red,
                                      decorationStyle: TextDecorationStyle.wavy,
                                      

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )));
                }
              }
            }));
  }
}