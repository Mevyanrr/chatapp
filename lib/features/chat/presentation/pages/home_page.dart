import 'package:chattapp/features/chat/presentation/widgets/chat_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: Icon(Icons.message),
        title: Center(child: Text("ChatApp", style: TextStyle(color: Colors.black, fontSize: 20),)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: Column(
        children: [
          ChatList(),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(onPressed: (){}, 
        backgroundColor: Colors.blue[700],
        child: Icon(Icons.add_comment, color: Colors.white,)),
      )
    );
  }
}