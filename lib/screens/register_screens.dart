import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
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
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
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
                // Simulasi pembuatan akun
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Akun berhasil dibuat!')),
                );
                // Kembali ke halaman login
                Navigator.pop(context);
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
                'Register',
                style: TextStyle(fontSize: 20), // Ukuran teks tombol
              ),
            ),
          ],
        ),
      ),
    );
  }
}
