import 'package:chatui_flutter/models/user_model.dart';

class Message{
  User sender;
  String time ;
  String text;
  bool isLiked;
  bool unRead;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unRead});
}

List<User> getUser(){
  List<User> users = [];
  users.add(User(id: 0, UserName: 'David', imgUrl: 'assets/images/man1.jpg'));
  users.add(User(id: 3, UserName: 'Roman', imgUrl: 'assets/images/man2.jpg'));
  users.add(User(id: 8, UserName: 'Norse', imgUrl: 'assets/images/man3.jpg'));
  users.add(User(id: 6, UserName: 'Pal', imgUrl: 'assets/images/man4.jpg'));
  users.add(User(id: 4, UserName: 'Tyson', imgUrl: 'assets/images/man5.jpg'));
  users.add(User(id: 1, UserName: 'Emma', imgUrl: 'assets/images/ladies1.jpg'));
  users.add(User(id: 2, UserName: 'Cinn', imgUrl: 'assets/images/ladies2.jpg'));
  users.add(User(id: 5, UserName: 'Rose', imgUrl: 'assets/images/ladies3.jpg'));
  users.add(User(id: 7, UserName: 'Lisa', imgUrl: 'assets/images/ladies4.jpg'));
  users.add(User(id: 9, UserName: 'Jenne', imgUrl: 'assets/images/ladies5.jpg'));
  return users;
}
List<User> users = getUser();
List<Message> chats = [
  Message(sender: users[0], time: '5:30 PM', text: 'Hey, how\'s going? What did you do today?', isLiked: true, unRead: true),
  Message(sender: users[1], time: '5:30 PM', text: 'How\'s the doggo?', isLiked: false, unRead: true),
  Message(sender: users[2], time: '5:30 PM', text: 'Just walked my doge. She was super duper cute. The best pupper!!', isLiked: true, unRead: true),
  Message(sender: users[3], time: '5:30 PM', text: 'Hey, how\'s going?', isLiked: false, unRead: false),
  Message(sender: users[4], time: '5:30 PM', text: 'Hey, how\'s going? What did you do today?', isLiked: true, unRead: false),
  Message(sender: users[5], time: '5:30 PM', text: 'Just walked my doge. She was super duper cute. The best pupper!!?', isLiked: true, unRead: true),
  Message(sender: users[6], time: '5:30 PM', text: 'Hey, how\'s going?', isLiked: true, unRead: true),
  Message(sender: users[7], time: '5:30 PM', text: 'How\'s the doggo? What did you do today?', isLiked: false, unRead: false),
  Message(sender: users[8], time: '5:30 PM', text: 'Just walked my doge. She was super duper cute. The best pupper!!', isLiked: true, unRead: false),
  Message(sender: users[9], time: '5:30 PM', text: 'Hey, how\'s going? What did you do today?', isLiked: true, unRead: false),
];