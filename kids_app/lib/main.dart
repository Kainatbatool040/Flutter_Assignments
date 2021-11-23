import 'package:flutter/material.dart';
import 'PlayScreen.dart';
import 'SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kids App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

bool alphaCase = true;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white70,
                  child: CircleAvatar(
                    radius: 74,
                    backgroundImage: AssetImage('images/download.png'),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
              ),

              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14.0,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle_rounded),
                title: const Text('Account',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14.0,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings_applications_rounded ),
                title: const Text('Setting',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14.0,
                  ),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.article_rounded),
                title: const Text('About us',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14.0,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('App info',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16.0,
                  ),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 10,
                child: Divider(
                  color: Colors.black,
                ),
              ),
            ]
        ),
      ),
      appBar: AppBar(
        title: Text('Alphabets App for kids'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Alphabets which you want to learn.',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
              textAlign: TextAlign.center,),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      alphaCase = true;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PlayScreen()),
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green,
                        ),
                        height: 50,
                        width: 180,
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Capital A-Z',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ))),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                    onTap: () {
                      alphaCase = false;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PlayScreen()),
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green,
                        ),
                        height: 50,
                        width: 180,
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Small a-z',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ))),
              ],
            ),

          ],
        ),
      ),
    );
  }
}