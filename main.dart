import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Batista  Tugas1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get onPressed => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Batista Login Screen',style: TextStyle(color: Colors.white)),
        leading: Icon(Icons.home, color: Colors.white),
        actions: <Widget>[
          IconButton(
              onPressed: onPressed,
              icon: new Icon(Icons.search, color: Colors.white)),
          IconButton(
              onPressed: onPressed,
              icon: new Icon(Icons.call, color: Colors.white)),
          IconButton(
              onPressed: onPressed,
              icon: new Icon(Icons.call, color: Colors.white)),
        ],
        backgroundColor: Colors.blue,
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50), // Padding
              child: FlutterLogo(size: 100), // Ukuran logo bos
              margin: EdgeInsets.only(
                  bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // sudut kotak
                color: Colors.grey[100], // background kotak
              ),
            ),
            Container(
              width: 350, // Lebar kotak form
              padding: EdgeInsets.all(15), // Padding
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // sudut kotak
                color: Colors.grey[200], // background kotak
              ),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              10),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20),
                    // Jarak antara Email dan Password
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              10),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    // Jarak Password dan tombol Login
                    ElevatedButton(
                      onPressed: () {}, //  logika
                      child: Text('Login',
                      style: TextStyle(color: Colors.white)
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.lightGreen; // warna saat tombol ditekan
                            }
                            return Colors.blue; // Warna default saat tombol tidak ditekan
                          },
                        ),
                        fixedSize: MaterialStateProperty.all<Size>(Size(400, 50)), // panjang dan tinggi tombol
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Implementasi lupa password
                      },
                      child: Text('Forgot Password?'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
