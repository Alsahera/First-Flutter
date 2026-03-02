import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Mahasiswa"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE3F2FD),
              Color(0xFFBBDEFB),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              elevation: 8,
              margin: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // FOTO
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 65,
                        backgroundImage:
                            AssetImage('assets/foto.png'),
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Alsahera Ramadhan Nesa",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "Mahasiswa Teknik Informatika",
                      style: TextStyle(color: Colors.grey),
                    ),

                    const SizedBox(height: 25),

                    // DATA INFO
                    _buildInfoTile(Icons.badge, "NIM", "3124521023"),
                    _buildInfoTile(Icons.school, "Program Studi", " Teknik Informatika"),
                    _buildInfoTile(Icons.email, "Email", "alsaheraramadhannesa@gmail.com"),

                    const SizedBox(height: 20),

                    const Text(
                      "Saya adalah mahasiswa yang memiliki minat pada pengembangan aplikasi mobile dan teknologi perangkat lunak. "
                      "Saya senang mempelajari hal baru dan terus mengembangkan kemampuan di bidang IT.",
                      textAlign: TextAlign.center,
                      style: TextStyle(height: 1.5),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _buildInfoTile(
      IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 10),
          Text(
            "$title: ",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}