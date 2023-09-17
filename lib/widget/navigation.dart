import 'package:electro_market/constants/constants.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
           UserAccountsDrawerHeader(
            accountName: 
              const Text(
                "MUHAMAD SYAMIM IRFAN BIN AHMAD SHOKKRI",
                style: TextStyle(
                  fontFamily: "Roboto",
                  color: Constants.primaryColor
                ), 
                softWrap: true,
           ),     
            accountEmail: 
              const Text(
              "syamimirfan59@gmail.com", 
              style: TextStyle(
                fontFamily: "Roboto",
                color: Constants.primaryColor,
              ),
              ),
              decoration: const BoxDecoration(
                color: Constants.secondaryColor, 
              ),
              currentAccountPicture: CircleAvatar(
                 child: ClipOval(
                  child: Image.asset("assets/user.png"),
                ),
              ),
             ),
          ListTile(
            leading: Icon(Icons.abc),
            title: Text("asdasdsd"),
            onTap: () {},
          ),
           ListTile(
            leading: Icon(Icons.abc),
            title: Text("asdasdsd"),
            onTap: () {},
          ),
           ListTile(
            leading: Icon(Icons.abc),
            title: Text("asdasdsd"),
            onTap: () {},
          ),
           ListTile(
            leading: Icon(Icons.abc),
            title: Text("asdasdsd"),
            onTap: () {},
          ),
           ListTile(
            leading: Icon(Icons.abc),
            title: Text("asdasdsd"),
            onTap: () {},
          ),
           ListTile(
            leading: Icon(Icons.abc),
            title: Text("asdasdsd"),
            onTap: () {},
          ),
           ListTile(
            leading: Icon(Icons.abc),
            title: Text("asdasdsd"),
            onTap: () {},
          ),
          const Divider(thickness: 0.5,),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}