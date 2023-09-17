import 'package:electro_market/constants/constants.dart';
import 'package:electro_market/widget/navigation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //JGN PAKAI APPBAR
      //TUKAR CONTAINER AND PAKAI BADGES UNTUK SHOPPING CART
      appBar: AppBar(
       backgroundColor: Constants.secondaryColor,
       title: const Text(
        "E Shop",
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.bold
        ),
       ),
       actions: [
         IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.shopping_bag_outlined, size: 30,)
          ),
       ],
      ),
      drawer: Navigation(),
    );
  }
}