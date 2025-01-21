import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'addproduct.dart';
import 'showproduct.dart';
import 'showproducttype.dart';
import 'showfiltertype.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDCh16HtewFRd2QfXf2hM27lzFvTkb3zfo",
            authDomain: "onlineshopdb-10dd6.firebaseapp.com",
            databaseURL:
                "https://onlineshopdb-10dd6-default-rtdb.firebaseio.com",
            projectId: "onlineshopdb-10dd6",
            storageBucket: "onlineshopdb-10dd6.firebasestorage.app",
            messagingSenderId: "56480463685",
            appId: "1:56480463685:web:780d95f8c1896ddb4b5c2c",
            measurementId: "G-CSQ5CGTKKY"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 248, 74, 62)),
        useMaterial3: true,
      ),
      home: Main(),
    );
  }
}

// Class stateful เรียกใช้การทำงานแบบโต้ตอบ
class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Main> {
  // ส่วนเขียน Code ภาษา Dart เพื่อรับค่าจากหน้าจอมา และส่งค่ากลับไป
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // พื้นหลังเป็นภาพ
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/image2.jpg'), // ใส่ชื่อไฟล์ภาพพื้นหลัง
                fit: BoxFit.cover,
              ),
            ),
          ),
          // เนื้อหาหลัก
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 500,
                    height: 300,
                    child: Image.asset('assets/cm.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => addproduct(),
                          ),
                        );
                      },
                      child: Text('บันทึกข้อมูลสินค้า'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowProduct(),
                          ),
                        );
                      },
                      child: Text('แสดงข้อมูลสินค้า'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowProductType(),
                          ),
                        );
                      },
                      child: Text('ประเภทสินค้า'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
