import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
     appBar: AppBar(
      title: Text('Ninja ID Card'),
       foregroundColor: Colors.white,
       backgroundColor: Colors.grey[850],
       centerTitle: true,
     ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjalevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
      ),
      body:
      Padding(
        padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),

        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/kamui.jpg'),
                radius: 55.0,
              ),
            ),

        Divider(
          height: 90.0,
          color: Colors.grey,
        ),

            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

        SizedBox(height: 5.0,),

            Text(
              'Joe Logan',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0,),

            Text(
              'Ninja Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 5.0),

            Text(
              '$ninjalevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30,),

          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.red[800],
              ),

              Text('Joe.Logan@ninja.kam.jp',
              style: TextStyle(color: Colors.grey),
              ),

            ],
          )
          ],
        ),
      ),

    );
  }
}


