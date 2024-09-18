import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/myprofile.jpeg'),
              radius: 100,
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              title: const Text(
                'Name',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
              subtitle: const Text(
                '~Ahmed',
                style: TextStyle(fontSize: 18),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.green,
                  )),
              leading: const Icon(Icons.person),
            ),
            ListTile(
              title: const Text(
                'Status',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
              subtitle: const Text(
                'Programming is life',
                style: TextStyle(fontSize: 18),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.green,
                  )),
              leading: const Icon(Icons.info_outline),
            ),
            const ListTile(
              title: Text(
                'Phone',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
              subtitle: Text(
                '+20123456789',
                style: TextStyle(fontSize: 18),
              ),
              leading: Icon(Icons.phone),
            ),
          ],
        ),
      ),
    );
  }
}
