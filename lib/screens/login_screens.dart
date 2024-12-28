import 'package:flutter/material.dart';
import 'package:flutter_application_uts_/screens/home_screens.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        color: Colors.lightBlue[50], // Warna latar belakang yang lebih lembut
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0), // Sudut membulat
                ),
              ),
            ),
            SizedBox(height: 16), // Jarak antara TextField
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0), // Sudut membulat
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Langsung arahkan ke HomeScreen tanpa logika autentikasi
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .orangeAccent, // Warna latar belakang tombol yang lebih cerah
                padding: EdgeInsets.symmetric(
                    horizontal: 40, vertical: 20), // Ukuran tombol lebih besar
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Sudut membulat
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20), // Ukuran teks tombol
              ),
            ),
          ],
        ),
      ),
    );
  }
}
