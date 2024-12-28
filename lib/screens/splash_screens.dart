import 'package:flutter/material.dart';
import 'package:flutter_application_uts_/screens/login_screens.dart';
import 'package:flutter_application_uts_/screens/register_screens.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors
          .lightBlue[100], // Mengatur warna latar belakang yang lebih lembut
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GYM APP',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black), // Mengatur warna teks
            ),
            SizedBox(height: 20),
            Image.asset('assets/images/logo.png',
                width: 100), // Ganti dengan path gambar Anda
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.orange, // Mengatur warna latar belakang tombol
                padding: EdgeInsets.symmetric(
                    horizontal: 40, vertical: 20), // Mengatur ukuran tombol
              ),
              child: Text(
                'Register',
                style: TextStyle(fontSize: 20), // Mengatur ukuran teks tombol
              ),
            ),
            SizedBox(height: 20), // Jarak antara tombol
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.orange, // Mengatur warna latar belakang tombol
                padding: EdgeInsets.symmetric(
                    horizontal: 40, vertical: 20), // Mengatur ukuran tombol
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20), // Mengatur ukuran teks tombol
              ),
            ),
          ],
        ),
      ),
    );
  }
}
