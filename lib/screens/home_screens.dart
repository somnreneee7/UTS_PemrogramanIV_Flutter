import 'package:flutter/material.dart';
import 'package:flutter_application_uts_/screens/splash_screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Kembali ke halaman splash screen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat datang di Aplikasi Gym!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Latihan Hari Ini:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildWorkoutCard(
                      'Push Up',
                      'Latihan untuk otot dada dan lengan',
                      Icons.fitness_center),
                  _buildWorkoutCard(
                      'Squat', 'Latihan untuk otot kaki', Icons.fitness_center),
                  _buildWorkoutCard('Plank', 'Latihan untuk kekuatan inti',
                      Icons.fitness_center),
                  _buildWorkoutCard(
                      'Deadlift',
                      'Latihan untuk otot punggung dan kaki',
                      Icons.fitness_center),
                  _buildWorkoutCard('Bench Press', 'Latihan untuk otot dada',
                      Icons.fitness_center),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman latihan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(
                'Lihat Semua Latihan',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkoutCard(String title, String description, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, size: 40, color: Colors.orange),
        title: Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Navigasi ke detail latihan
        },
      ),
    );
  }
}
