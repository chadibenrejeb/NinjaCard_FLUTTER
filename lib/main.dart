import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(126, 124, 126, 1),
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ninjaLevel++;
        },
        child : Icon(Icons.add),
        backgroundColor: Color.fromRGBO(126, 124, 126, 1),
        ),

      body : Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
            child : CircleAvatar(
              backgroundImage: AssetImage("assets/ninja1.jpg"),
              radius: 40.0,
            ),
          ),
          Divider(    // horizantal line between the 2 widgets 
            height: 60.0,
            color: Color.fromRGBO(126, 124, 126, 1),
          ),
            Text(
              'Name',
              style: TextStyle(
                color: Color.fromRGBO(126, 124, 126, 1),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Chady',
              style: TextStyle(
                color: Color.fromRGBO(210, 150, 0, 1),
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Color.fromRGBO(126, 124, 126, 1),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Color.fromRGBO(210, 150, 0, 1),
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Color.fromRGBO(126, 124, 126, 1),
                ),
                SizedBox(width: 5.0),
                Text(
                  'rejebchadi@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.0,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





