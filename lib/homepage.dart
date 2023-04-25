import 'package:flutter/material.dart';
import 'package:hidden_drawer_no_plugin/pages/first_page.dart';
import 'package:hidden_drawer_no_plugin/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(backgroundColor: Colors.deepPurple[300]),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    'L O G O',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'Page 1',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FirstPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'Page 2',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
