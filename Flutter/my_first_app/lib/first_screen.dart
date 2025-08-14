import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu, color: Colors.white),
        centerTitle: true,
        title: Text('First Screen', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          decoration: BoxDecoration(
            // color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [.2, .8],
            ),
            // border: Border.all(color: Colors.deepOrange),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 10),
            ],
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // ClipOval(
              //   child: Image.network(
              //     'https://www.shutterstock.com/image-photo/portrait-handsome-male-doctor-stethoscope-600nw-2480850611.jpg',
              //     width: 150,
              //     height: 150,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              ClipOval(
                child: Image.asset(
                  'assets/images/doctor.jpeg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Ahmed Ali',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook_rounded, color: Colors.blue),
                  SizedBox(width: 20),
                  Icon(Icons.camera_alt_rounded, color: Colors.redAccent),
                  SizedBox(width: 20),
                  Icon(Icons.telegram, color: Colors.blueAccent),
                  SizedBox(width: 20),
                  Icon(Icons.mail, color: Colors.yellow),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
