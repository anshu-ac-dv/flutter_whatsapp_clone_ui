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
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(child: Icon(Icons.person)),
                    title: Text('Chat'),
                    subtitle: Text('Last message from Chat'),
                  );
                },
              ),
            ),
            Center(child: Text('Status')),
            Center(child: Text('Calls')),
          ],
        ),
      ),
    );
  }
}
