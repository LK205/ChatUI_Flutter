import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class Chat_Screen extends StatefulWidget{
  final User user;

  Chat_Screen({required this.user});

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0,
          centerTitle: true,
          title: Text(
            widget.user.UserName,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 28,
              color: Colors.white
          ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz,
            size: 30,))
          ],
        ),
      body: Container(
        height: 780,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          color: Colors.white
        ),
        child: Stack(
          children: [
            ClipRRect(
              child: ListView(
                children:
                    [
                      const SizedBox(height: 24,),
                      Row(
                        children: [
                          Container(
                            width: 350,
                            height: 80,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              color: Color(0xFFFFEFEE)
                            ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('17:42',
                                  style: TextStyle(
                                    color: Colors.blueGrey
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('I\'m bored.',
                                    style: TextStyle(
                                        color: Colors.black87,
                                      fontSize: 18
                                    ),)
                                ],
                              )
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_border, size: 30,))
                        ],
                      ),
                      const SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(width: 30,),
                          Container(
                              width: 350,
                              height: 80,
                              padding: const EdgeInsets.all(16),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                  color: Color(0xFFFFEFEE)
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('17:42',
                                    style: TextStyle(
                                        color: Colors.blueGrey
                                    ),),
                                  SizedBox(height: 10,),
                                  Text('What\'s on TV?',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18
                                    ),)
                                ],
                              )
                          ),

                        ],
                      ),
                      const SizedBox(height: 24,),
                      Row(
                        children: [
                          Container(
                              width: 350,
                              height: 80,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  color: Color(0xFFFFEFEE)
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('17:43',
                                    style: TextStyle(
                                        color: Colors.blueGrey
                                    ),),
                                  SizedBox(height: 10,),
                                  Text('Nothing.',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18
                                    ),)
                                ],
                              )
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite, size: 30, color: Colors.redAccent,))
                        ],
                      ),
                      const SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite, size: 30, color: Colors.redAccent,)),
                          Container(
                              width: 350,
                              height: 80,
                              padding: const EdgeInsets.all(16),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                  color: Color(0xFFFFEFEE)
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('17:43',
                                    style: TextStyle(
                                        color: Colors.blueGrey
                                    ),),
                                  SizedBox(height: 10,),
                                  Text('There must be something on TV!',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18
                                    ),)
                                ],
                              )
                          ),

                        ],
                      ),
                      const SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite, size: 30, color: Colors.redAccent,)),
                          Container(
                              width: 350,
                              height: 80,
                              padding: const EdgeInsets.all(16),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                  color: Color(0xFFFFEFEE)
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('17:43',
                                    style: TextStyle(
                                        color: Colors.blueGrey
                                    ),),
                                  SizedBox(height: 10,),
                                  Text('What about that new game show?',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18
                                    ),)
                                ],
                              )
                          ),

                        ],
                      ),
                      const SizedBox(height: 24,),
                      Row(
                        children: [
                          Container(
                              width: 350,
                              height: 80,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                  color: Color(0xFFFFEFEE)
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('17:44',
                                    style: TextStyle(
                                        color: Colors.blueGrey
                                    ),),
                                  SizedBox(height: 10,),
                                  Text('Nothing that\'s interesting.',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18
                                    ),)
                                ],
                              )
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_border, size: 30,))
                        ],
                      ),

                    ]

              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 710),
              height: 60,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_right_sharp, size: 45, color: Colors.orange,),
                  Expanded(
                    child: TextField(

                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Send a message ...'
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.send, size: 30, color: Colors.orange,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}