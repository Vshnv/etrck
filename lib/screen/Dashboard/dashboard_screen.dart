import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                  child: Column(
                    children: [
                      Image.asset(
                          "assets/images/edutrack.png",
                        height: 100,
                        width: 100,
                      ),
                      Text("EduTrack")
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text('Edit Profile'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Course'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Attendance'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Exam'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Leave Request'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Academic Calendar'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Events'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Enquiry'),
                onTap: () {
                },
              ),
            ],
          )// Populate the Drawer in the next step.
      ),
      appBar: AppBar(title: Text("Edutrack")),
      body:  Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/avatar.jpg',
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Text("Username: Test123456"),
            Text("Admin no:  154789565")
          ],
        ),
      ),
    );
  }

}