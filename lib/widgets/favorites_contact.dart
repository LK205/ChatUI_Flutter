import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../screens/chat_screen.dart';

class Favorites_Contact extends StatefulWidget{
  @override
  State<Favorites_Contact> createState() => _Favorites_ContactState();
}

class _Favorites_ContactState extends State<Favorites_Contact> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Favorite contacts',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.blueGrey,
                    letterSpacing: 1.0
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz, size: 30,
                    color: Colors.blueGrey,)
              )
            ],
          ),
        ),
        Container(
          height: 90,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 10,),
            itemCount: users.length - 4,
            itemBuilder: (context, index){
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder:
                    (_) => Chat_Screen(user: chats[index + 4].sender))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(users[index + 4].imgUrl),
                      ),
                    ),
                    Text(
                      users[index + 4].UserName,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}