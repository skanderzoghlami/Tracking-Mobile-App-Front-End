import 'package:dribbbledanimation/models/rapport.dart';
import 'package:dribbbledanimation/models/rapportsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RapportsUI {
 

  static final List<Rapport> rapports = [
    const Rapport(
        id: "1",
        nom: "Restaurant ouvert" ,
        icon: Icon(
          Icons.restaurant,
          size: 50.0,
        ),
        url: "/restaurant",
        image: "assets/restauu.png"),
    const Rapport(
        id: "2",
        nom: "Café ouvert",
        icon: Icon(Icons.local_cafe),
        url: "/cafe",
        image: "assets/caffe.png"),
    const Rapport(
        id: "3",
        nom: "Rassemblement",
        icon: Icon(Icons.people),
        url: "/gathering",
        image: "assets/team.png"),
    const Rapport(
        id: "4",
        nom: "Dépassement de couvre-feu",
        icon: Icon(Icons.warning),
        url: "/couvreFeu",
        image: "assets/staysafe.png"),
    const Rapport(
        id: "5",
        nom: "Dépassement de mise en quarantaine",
        icon: Icon(Icons.error),
        url: "/quarantaine",
        image: "assets/quarantine.jpg"),
    const Rapport(
        id: "6",
        nom: " Dépassement de l'auto-confinement",
        icon: Icon(Icons.home),
        url: "/autoConfinement",
        image: "assets/confinement.png"),
    const Rapport(
        id: "7",
        nom: "Monopolisation des produits de base",
        icon: Icon(Icons.home),
        url: "/monopole",
        image: "assets/cash.png"),
  ];
  static final List<Rapport> rapportsAr = [
    const Rapport(
        id: "1",
        nom: "مطعم مفتوح" ,
        icon: Icon(
          Icons.restaurant,
          size: 50.0,
        ),
        url: "/restaurant",
        image: "assets/restauu.png"),
    const Rapport(
        id: "2",
        nom: "مقهى مفتوح",
        icon: Icon(Icons.local_cafe),
        url: "/cafe",
        image: "assets/caffe.png"),
    const Rapport(
        id: "3",
        nom: "تجمع سكاني",
        icon: Icon(Icons.people),
        url: "/gathering",
        image: "assets/team.png"),
    const Rapport(
        id: "4",
        nom: "عدم الامتثال لحظر التجول",
        icon: Icon(Icons.warning),
        url: "/couvreFeu",
        image: "assets/staysafe.png"),
    const Rapport(
        id: "5",
        nom: "تجاوز الحجر الصحي",
        icon: Icon(Icons.error),
        url: "/quarantaine",
        image: "assets/quarantine.jpg"),
    const Rapport(
        id: "6",
        nom: "عدم الامتثال للحبس الذاتي",
        icon: Icon(Icons.home),
        url: "/monopole",
        image: "assets/confinement.png"),
    const Rapport(
        id: "7",
        nom: "احتكار المواد الأساسية",
        icon: Icon(Icons.home),
        url: "/monopole",
        image: "assets/cash.png"),
  ];

  static Rapport getRapportById(id) {
    return rapports.where((p) => p.id == id).first;
  }
}
