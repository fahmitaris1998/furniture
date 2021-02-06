import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/home.dart';
import 'package:furniture/main.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

enum BottomIcons{
  Home,
  Favorit,
  Notification,
  Setting
}
class _DashboardState extends State<Dashboard> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Stack(
          children: [
            Column(
              children: [
                Expanded(child:
                bottomIcons == BottomIcons.Home ? Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Home(),
                ):Container()
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20,left: 24,right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            bottomIcons = BottomIcons.Home;
                          });
                        },
                        child: bottomIcons == BottomIcons.Home? Container(
                          padding: EdgeInsets.only(top: 13,bottom: 13,left: 14,right: 16),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(	238, 101, 84, 1),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.home,color: Colors.white,),
                              SizedBox(width: 8.0,),
                              Text("Explore",style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white,fontFamily: 'Poppinsnormal'),)
                            ],
                          ),
                        ):Icon(Icons.home),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            bottomIcons = BottomIcons.Favorit;
                          });
                        },
                        child: bottomIcons == BottomIcons.Favorit? Container(
                          padding: EdgeInsets.only(top: 13,bottom: 13,left: 14,right: 16),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(	238, 101, 84, 1),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.favorite_border_outlined,color: Colors.white,),
                              SizedBox(width: 8.0,),
                              Text("Favorite",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Poppinsnormal'),)
                            ],
                          ),
                        ):Icon(Icons.favorite_border_outlined),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            bottomIcons = BottomIcons.Notification;
                          });
                        },
                        child: bottomIcons == BottomIcons.Notification? Container(
                          padding: EdgeInsets.only(top: 13,bottom: 13,left: 14,right: 16),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(	238, 101, 84, 1),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.notifications_none_outlined,color: Colors.white,),
                              SizedBox(width: 8.0,),
                              Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Poppinsnormal'),)
                            ],
                          ),
                        ):Icon(Icons.notifications_none_outlined),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            bottomIcons = BottomIcons.Setting;
                          });
                        },
                        child: bottomIcons == BottomIcons.Setting? Container(
                          padding: EdgeInsets.only(top: 13,bottom: 13,left: 14,right: 16),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(	238, 101, 84, 1),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.settings,color: Colors.white,),
                              SizedBox(width: 8.0,),
                              Text("Setting",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Poppinsnormal'),)
                            ],
                          ),
                        ):Icon(Icons.settings),
                      ),

                    ],
                  ),
                ),
              ],
            )
          ],
        ) ,
      ),
    );
  }
}
