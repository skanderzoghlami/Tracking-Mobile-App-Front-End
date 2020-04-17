import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dribbbledanimation/api/reportApi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Gouvernement {
  String selectedGouvernorat;
  List<String> delegation = new List<String>();
  List<DropdownMenuItem<String>> deleg = new List<DropdownMenuItem<String>>();
  List<String> gouvernoratsName = [
    "Ariana",
    "Béja",
    "Ben Arous",
    "Bizerte",
    "Gabès",
    "Gafsa",
    "Jendouba",
    "Kairouan",
    "Kasserine",
    "Kébili",
    "Kef",
    "Mahdia",
    "Manouba",
    "Médenine",
    "Monastir",
    "Nabeul",
    "Sfax",
    "Sidi Bouzid",
    "Siliana",
    "Sousse",
    "Tataouine",
    "Tozeur",
    "Tunis",
    "Zaghouan",
  ];
  List<String> gouvernoratsNameAr = [
    "أريانة",
    "باجة",
    "بن عروس",
    "بنزرت",
    "قابس",
    "قفصة",
    "جندوبا",
    "القيروان",
    "القصرين",
    "ڨبلي",
    "الكاف",
    "المهدية",
    "منوبة",
    "مدنين",
    "المنستير",
    "نابل",
    "صفاقس",
    "سيدي بوزيد",
    "سليانة",
    "سوسة",
    "تطاوين",
    "توزر",
    "تونس",
    "زغوان"
  ];

  void setDelegation(gouv) async {
    Response res = await CallApi().getData(gouv);
    //print(res);
    final List<dynamic> parsed = res.data;
    //print(parsed);
    if (this.delegation.length > 0) {
      this.delegation.clear();
    }
    for (var i = 0; i < parsed.length; i++) {
      this.delegation.add(parsed[i]['name']);
    }
    print(this.delegation);
    this.deleg = this.delegation.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(value: value, child: Text(value));
    }).toList();
    /*print(this.deleg.toString());
    for (var j = 0; j < deleg.length; j++) {
      print(deleg[j].value);
    }*/
  }

  getDelegation() async {
    //setDelegation();
    return this.deleg;
  }
}
