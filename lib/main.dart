import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background_4.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                AppBar(
                  toolbarHeight: 35,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                  title: const Text('Personal card'),
                  backgroundColor: Color.fromRGBO(255, 255, 255, 0.344),
                  elevation: 0,
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        MyAvatar(),
                        Text(
                          'Louis Mercier', // My name
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 40,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Text(
                            'Software Engineering Student', // My title
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const Column(
                          children: [
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              color: Color.fromRGBO(
                                  255, 255, 255, 0.344), // alpha value
                              child: ListTile(
                                leading: Icon(Icons.email),
                                title:
                                    Text('louisme.2014@gmail.com'), // My email
                                textColor: Color.fromRGBO(255, 255, 255, 1),
                                iconColor: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              color: Color.fromRGBO(
                                  255, 255, 255, 0.344), // alpha value
                              child: ListTile(
                                leading: Icon(Icons.phone),
                                title: Text('0707283006'), //   My phone number
                                textColor: Color.fromRGBO(255, 255, 255, 1),
                                iconColor: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              color: Color.fromRGBO(
                                  255, 255, 255, 0.344), // alpha value
                              child: ListTile(
                                leading: Icon(Icons.web),
                                title: Text('www.mywebsite.com'), // My website
                                textColor: Color.fromRGBO(255, 255, 255, 1),
                                iconColor: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

class MyAvatar extends StatefulWidget {
  @override
  _MyAvatarState createState() => _MyAvatarState();
}

class _MyAvatarState extends State<MyAvatar> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovering = true),
      onExit: (event) => setState(() => _isHovering = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()..scale(_isHovering ? 1.05 : 1.0),
        child: const Material(
          elevation: 5, // shadow
          shape: CircleBorder(),
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/my_image.jpg'),
          ),
        ),
      ),
    );
  }
}
