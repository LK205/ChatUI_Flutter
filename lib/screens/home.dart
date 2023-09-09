import 'package:chatui_flutter/models/message_model.dart';
import 'package:chatui_flutter/widgets/category_selcetor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../widgets/favorites_contact.dart';
import '../widgets/recent_chats.dart';

class Home extends StatefulWidget {  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<User> users = getUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: _appBar(),
      body: ListView(
        children: [
          Category_Selector(),
          Column(
            children: [
              Container(
                    height: 1800,
                    decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                      ),
                    ),
                child:  Column(
                  children: [
                    Favorites_Contact(),
                    Recent_Chats()
                  ],
                ),
              ),


            ],
          ),

        ],
      )
    );
  }

  AppBar _appBar(){
    return AppBar(
      backgroundColor: Colors.orange,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        iconSize: 30,
        color: Colors.white,
        onPressed: () {},
      ),
      centerTitle: true,
      title: const Text('Chats',
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 28,
            color: Colors.white
        ),),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
      ],
      elevation: 0,
    );
  }
}


