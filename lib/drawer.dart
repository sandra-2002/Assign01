import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerHome(),
  ));
}

class DrawerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Home"),
      ),
      drawer: NavDrawer(),
      body: Column(
        children: [
          // Your content for the DrawerHome screen...
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('asset/images/pro.jpeg'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Monkey D Luffy",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 1, right: 200),
                  child: Text(
                    "Manvi Pichal is setting the record straight after her comments on being"
                        " super selective picking her runway shows angered fellow models."
                        "During an interview with Love magazine, the 22-year-old said she "
                        "was never one of those girls who would do like 30 shows a season or whatever the (expletive) those girls do."
                        "Manvi, the highest-paid supermodel in 2017, said she has other things to do:"
                        " More power to 'em. But I had a million jobs, not only catwalks but everything else."
                        "However, in a series of tweets Tuesday, the reality star said she was "
                        "misrepresented in the publication and that her"
                        " words were twisted and taken out of context."
                        "She said: 'I want to be clear. The respect that I have for my peers is immeasurable!'",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topRight,
            colors: [Colors.pink, Colors.red, Colors.white],
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              width: 150,
              height: 50,
            ),
            const ListTile(
              title: Text("Monkey D Luffy"),
              subtitle: Text("King of The Pirates"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("asset/images/pro.jpeg"),
                radius: 20,
              ),
            ),
            SizedBox(
              width: 100,
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.dashboard_outlined),
              title: Text("Dashboard"),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => DrawerHome(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.leaderboard_outlined),
              title: Text("Leads"),
            ),
            ListTile(
              leading: Icon(Icons.people_outline_sharp),
              title: Text("Clients"),
            ),
            ListTile(
              leading: Icon(Icons.rocket_launch_outlined),
              title: Text("Projects"),
            ),
            ListTile(
              leading: Icon(Icons.man_sharp),
              title: Text("Patients"),
            ),
            ListTile(
              leading: Icon(Icons.subscriptions_outlined),
              title: Text("Subscription"),
            ),
            ListTile(
              leading: Icon(Icons.payments_outlined),
              title: Text("Payments"),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_sharp),
              title: Text("Users"),
            ),
            ListTile(
              leading: Icon(Icons.library_add_check_rounded),
              title: Text("Library"),
            ),
            SizedBox(
              width: 250,
              height: 30,
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Log Out"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent[200],
                  shadowColor: Colors.redAccent[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
