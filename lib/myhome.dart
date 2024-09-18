import 'dart:developer';

import 'package:depi/profile.dart';
import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
   Myhome({super.key});

final List<Chat> chats=[
  Chat(name: 'Sara Ahmed',image: 'images/profile.jpg',lastmessage: 'hello ahmed i want to tell you...',time: '13:00 AM'),
    Chat(name: 'BMW',image: 'images/profile2.png',lastmessage: 'hi we want to give you a new BMW...',time: '8:00 AM'),

  Chat(name: 'Mark Zuckerberg',image: 'images/profile3.png',lastmessage: 'hi do u want to come over...',time: '18:00 PM'),

  Chat(name: 'Angry vat',image: 'images/profile4.jpg',lastmessage: 'I love you do you want to come...',time: '7:00 AM'),

  Chat(name: 'Batman',image: 'images/profile5.jpg',lastmessage: 'We have to save Gotham...',time: '13:00 AM'),

  Chat(name: 'Apple',image: 'images/profile6.jpg',lastmessage: 'You are the next CEO...',time: '8:00 AM'),
  Chat(name: 'Albert Einstein',image: 'images/profile7.png',lastmessage: 'I will send to you my next theory...',time: '4:00 AM'),
  Chat(name: 'Ferrari',image: 'images/profile8.png',lastmessage: 'the new version will be sent to u...',time: '15:00 PM'),
  Chat(name: 'Joe biden',image: 'images/profile9.jpg',lastmessage: 'the USA needs you...',time: '20:00 PM'),
  Chat(name: 'Elon Musk',image: 'images/profile10.jpg',lastmessage: 'My fourtune is yours...',time: '16:00 PM'),


];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'Profile':
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                  break;

                default:
                  log(value);
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "New group",
                  child: Text("New group"),
                ),
                const PopupMenuItem(
                  value: "New broadcast",
                  child: Text("New broadcast"),
                ),
                const PopupMenuItem(
                  value: "Linked devices",
                  child: Text("Linked devices"),
                ),
                const PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages"),
                ),
                const PopupMenuItem(
                  value: "Profile",
                  child: Text("Profile"),
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView.builder(itemCount: chats.length,itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(chats[index].image),
          ),
          title: Text(chats[index].name),
          subtitle: Text(chats[index].lastmessage),
          trailing: Text(chats[index].time),
        );
        
      })
    );
  }
}

class Chat {
String name;
String image;
String time;
String lastmessage;


Chat({required this.name, required this.image, required this.time, required this.lastmessage});

}