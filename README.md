# Flutter_whatsapp_clone_ui

A new Flutter project for creating a clone app of WhatsApp to improve my designing skills and make some projects.

## This is Simple Clone of WhatsApp 

### Main.Dart File

```
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone_ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Web',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const MyHomePage(),
    );
  }
}
```

### home_screen of clone website
```
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.teal,
          bottom: TabBar(
            tabs: [
              Icon(Icons.camera_alt, color: Colors.white),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              itemBuilder:
                  (context) => [
                    const PopupMenuItem(value: 1, child: Text('New chat')),
                    const PopupMenuItem(value: 2, child: Text('New group')),
                    const PopupMenuItem(value: 3, child: Text('Settings')),
                  ],
            ),
            SizedBox(width: 50), // Add some space between icons
          ],
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Camera')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(child: Icon(Icons.person)),
                    title: Text('Chat'),
                    subtitle: Text('Last message from Chat'),
                    trailing: Text('6:30 AM'),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(child: Icon(Icons.person)),
                    title: Text('Chat'),
                    subtitle: Text('Last message from Chat'),
                    trailing: Text('6:30 AM'),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(child: Icon(Icons.person_2)),
                    title: Text('Calls'),
                    subtitle: Text('You Missed Call'),
                    trailing: Icon(Icons.phone),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

