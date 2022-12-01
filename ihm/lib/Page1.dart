import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Page2.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/ecrant.gif',//gif pour fond d'écrant
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/vue');
              },
              child: CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('images/avatar.jpg'),//(photo d'avatar faut ajouter dans images)
              ),
            ),
            SizedBox(
              height: 70.0,
            ),
            Text(
              'Smart House',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.orange.shade50,
              ),
            ),
            Text(
              'Connectez-vous à votre maison ',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20.0,
                color: Colors.orange.shade50,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            
             
          ],
        ),
      ),
    );
  }
}
