import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart';

// To parse this JSON data, do
//
//     final toDo = toDoFromJson(jsonString);

// To parse this JSON data, do
//
//     final myWatchList = myWatchListFromJson(jsonString);

import 'dart:convert';

List<MyWatchList> myWatchListFromJson(String str) => List<MyWatchList>.from(json.decode(str).map((x) => MyWatchList.fromJson(x)));

String myWatchListToJson(List<MyWatchList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyWatchList {
    MyWatchList({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    String watched;
    String title;
    String rating;
    String releaseDate;
    String review;

    factory MyWatchList.fromJson(Map<String, dynamic> json) => MyWatchList(
        watched: json["fields"]["watched"],
        title: json["fields"]["title"],
        rating: json["fields"]["rating"],
        releaseDate: json["fields"]["release_date"],
        review: json["fields"]["review"],
    );

    Map<String, dynamic> toJson() => {
        "watched": watched,
        "title": title,
        "rating": rating,
        "releaseDate": releaseDate,
        "review": review,
    };
}

