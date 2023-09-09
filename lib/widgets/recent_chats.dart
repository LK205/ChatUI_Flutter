import 'package:chatui_flutter/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/message_model.dart';

class Recent_Chats extends StatefulWidget{
  @override
  State<Recent_Chats> createState() => _Recent_ChatsState();
}

class _Recent_ChatsState extends State<Recent_Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30)
          )
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: chats.length,
          itemBuilder: (context, index){
            final Message chat = chats[index];
            return GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder:
              (_) => Chat_Screen(user: chat.sender))),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: chats[index].unRead ? const Color(0xFFFFEFFEE) : Colors.white70
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(chats[index].sender.imgUrl),
                      radius: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10,),
                              Container(
                                child: Text(
                                  chats[index].sender.UserName,
                                  style: const TextStyle(
                                    color: Colors.blueGrey
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  chats[index].text,
                                  style: const TextStyle(
                                    color: Colors.blueGrey,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )

                            ],
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 10,),
                            Text(
                              chats[index].time,
                              style: const TextStyle(
                                  color: Colors.blueGrey
                              ),
                            ),
                            const SizedBox(height: 4,),
                            Container(
                              child:
                              chats[index].unRead ? _unRead() : const SizedBox(height: 1,),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),);
  }
}
Widget _unRead(){
  return Container(
    width: 40,
    height: 20,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(30)
    ),
    child: const Text(
        'NEW',
        style: TextStyle(
            color: Colors.white,
          fontSize: 12
        ),
    ),
  );
}