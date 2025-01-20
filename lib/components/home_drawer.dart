import 'package:flutter/material.dart';
import 'package:phrasepics/utils/constant.dart';

import '../screens/profile_screen.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
                child:
                Center(child: Text(title.toUpperCase(), style:TextStyle(fontSize: 35,color: Colors.pinkAccent)))
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.pinkAccent,),
              onTap: (){Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );},
              title: Text("Profile",style: TextStyle(fontSize: 24,color: Colors.pinkAccent),),

            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.pinkAccent,),
              onTap: (){Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );},
              title: Text("Settings",style: TextStyle(fontSize: 24,color: Colors.pinkAccent),),

            ),
          ],
        ),

      ),
    );
  }
}
