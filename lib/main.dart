import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Chapter - 5'),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.train),
            ),
            Tab(
              icon: Icon(Icons.flight),
            ),
            Tab(
              icon: Icon(Icons.bus_alert),
            )
          ]),
        ),
        body: const TabBarView(children: [
          ListTile(
            // leading: Icon(Icons.handshake),
            trailing: Icon(Icons.flutter_dash),
            title: Text('Welcome'),
            subtitle: Text('Hello everyone welcome to my channel'),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SelectableText('Please copy this text'),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 200,
                  child: TextField(
                    maxLines: null,
                    expands: true,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Copy text here',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.bus_alert,
            size: 350,
          )
        ]),
        drawer: Drawer(
            child: ListView(
          children: [
            const DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  accountName: Text('Prajwol Pradhan'),
                  accountEmail: Text('prajwol.pradhan@apexcollege.edu.np'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("P"),
                  ),
                  currentAccountPictureSize: Size.square(50),
                )),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                "Profile",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.newspaper),
              title: const Text(
                "News",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(
                "Bookings",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                "Settings",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        )),
      ),
    );
  }
}
