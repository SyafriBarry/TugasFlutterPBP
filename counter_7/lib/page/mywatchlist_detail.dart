import 'package:flutter/cupertino.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:flutter/material.dart';

class WatchListDetail extends StatelessWidget {
  final MyWatchList data;
  const WatchListDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail MyWatchList'),
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
      body: Container(
        margin: new EdgeInsets.symmetric(vertical: 20.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                 Colors.blue,
                 Colors.red
                ])
          ),
        child: Column(
          children: [
            Center(
              child: Text(data.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 32,
                    color: Color.fromARGB(255, 15, 15, 15))),
            ),
            SizedBox(
              height: 50, 
            ),
            
            Row(
              children: [
                Text("Release Date : ",
                    style:
                        TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 20,
                          color: Color.fromARGB(255, 251, 249, 249))),
                Text(data.releaseDate,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, 
                        fontSize: 20,
                        color: Color.fromARGB(255, 251, 249, 249))),
              ],
            ),
            Row(
              children: [
                Text("Rating : ",
                    style:
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 251, 249, 249),)),
                Text(data.rating.toString() + "/10",
                    style:
                        TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Color.fromARGB(255, 251, 249, 249))),
              ],
            ),
            Row(
              children: [
                Text("Status : ",
                    style:
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 251, 249, 249),)),
                if (data.watched == 'Yes')
                  Text("Watched",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, 
                          fontSize: 20,
                          color: Color.fromARGB(255, 251, 249, 249),)),
                if (data.watched == 'No')
                  Text("Unwatched",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Color.fromARGB(255, 251, 249, 249))),
              ],
            ),
            Row(
              children: [
                Text(
                  "Review: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 251, 249, 249),
                      fontSize: 20),
                ),Text(
              data.review,
              style: const TextStyle(
                color: Color.fromARGB(255, 248, 246, 246),
                fontSize: 20
              ),
            ),
              ],
            ),
            
          ],
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Kembali',
            style: TextStyle(fontSize: 12),
            
          ),
        ),
      ],
    );
  }
}