import 'package:flutterfire_samples/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_samples/res/custom_colors.dart';
import 'package:flutterfire_samples/widgets/app_bar_title.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.firebaseNavy,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.firebaseNavy,
        title: AppBarTitle(),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children:<Widget>[
            const CircleAvatar(
              backgroundImage: AssetImage('images/profil.png'),
              radius: 150,
            ),
            ListTile(
              title: const Text('M Syayid Aqil Hussain'),
              subtitle: Text(
                '20190801117',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6)),
              ),
            ),
            ListTile(
              title: const Text('Abdul Latif'),
              subtitle: Text(
                '20190801036',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6)),
              ),
            ),
            ListTile(
              title: const Text('Farid Handoyo'),
              subtitle: Text(
                '20190801256',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6)),
              ),
            ),
            ListTile(
              title: const Text('Andri Kurnia'),
              subtitle: Text(
                '20190801056',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

