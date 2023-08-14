import 'package:flutter/material.dart';
import 'package:login_page/screen/login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        actions: [
          IconButton(
              onPressed: () {
                singout(context);
              },
              icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text("Favourite cars $index"),
                  subtitle: Text("Car name $index"),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "images\1506821.jpg"),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 10)),
    );
  }

  singout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }
}
