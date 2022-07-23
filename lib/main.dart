import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              child: const DrawerHeader(
                  padding: EdgeInsets.all(5),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    accountName: Text(
                      'SAJJAD ALI',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.italic),
                    ),
                    accountEmail: Text(
                      'sajjadali11755@gmail.com',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontStyle: FontStyle.italic),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/SAVE.jpg'),
                    ),
                  )),
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: Text(
                'Share',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onTap: () {},
              hoverColor: Colors.cyan,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(
                'Settings',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onTap: () {},
              hoverColor: Colors.cyan,
            ),
            ListTile(
              leading: const Icon(Icons.save),
              title: Text(
                'Save',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onTap: () {},
              hoverColor: Colors.cyan,
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text(
                'Home',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onTap: () {},
              hoverColor: Colors.cyan,
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: Text(
                'Proxy',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onTap: () {},
              hoverColor: Colors.cyan,
            ),
            ListTile(
              leading: const Icon(Icons.event),
              title: Text(
                'Event',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onTap: () {},
              hoverColor: Colors.cyan,
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
