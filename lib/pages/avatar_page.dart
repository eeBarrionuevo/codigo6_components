import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar Page"),
        actions: [
          Icon(
            Icons.more_vert,
          ),
          CircleAvatar(
            backgroundColor: Colors.pink,
          ),
        ],
      ),
      body: Column(
        children: [
          // Image.network(
          //   "https://images.pexels.com/photos/10162536/pexels-photo-10162536.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          // ),
          FadeInImage(
            fadeInDuration: Duration(seconds: 5),
            fadeInCurve: Curves.bounceIn,
            placeholder: AssetImage("assets/images/loading.gif"),
            image: NetworkImage(
                "https://images.pexels.com/photos/10162536/pexels-photo-10162536.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
        ],
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Atras"),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
    );
  }
}
