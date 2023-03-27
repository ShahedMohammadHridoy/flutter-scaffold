import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('The quick brown fox jumps over the lazy dog.'),
      ),
      appBar: AppBar(
        title: const Text('Hello'),
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar('Share', context);
              },
              icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {
                mySnackBar('Book', context);
              },
              icon: const Icon(Icons.book))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar('Floating action btn', context);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              mySnackBar('Home', context);
              break;
            case 1:
              mySnackBar('Contact', context);
              break;
            case 2:
              mySnackBar('Profile', context);
              break;
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0.0),
                child: UserAccountsDrawerHeader(
                    currentAccountPicture: Image.network(
                        "https://shahed.com.bd/assets/img/shahed.png"),
                    decoration: const BoxDecoration(color: Colors.lightGreen),
                    accountName: const Text('Shahed'),
                    accountEmail: const Text('shahed@gmail.com'))),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                mySnackBar('Home', context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Contact'),
              onTap: () {
                mySnackBar('Contact', context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                mySnackBar('Profile', context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              onTap: () {
                mySnackBar('Email', context);
              },
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0.0),
                child: UserAccountsDrawerHeader(
                    currentAccountPicture: Image.network(
                        "https://shahed.com.bd/assets/img/shahed.png"),
                    decoration: const BoxDecoration(color: Colors.lightGreen),
                    accountName: const Text('Shahed'),
                    accountEmail: const Text('shahed@gmail.com'))),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                mySnackBar('Home', context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Contact'),
              onTap: () {
                mySnackBar('Contact', context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                mySnackBar('Profile', context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              onTap: () {
                mySnackBar('Email', context);
              },
            )
          ],
        ),
      ),
    );
  }
}
