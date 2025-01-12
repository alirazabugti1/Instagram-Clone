import 'package:flutter/material.dart';
import 'package:instagram/HomeState.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginScreen> {
  var password = 'Ali Raza Bugti';
  var email = 'razabugtiali@gmail.com';
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();

  bool Checker(var Email, var Password) {
    if (Email == email && Password == password) {
      return true;
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 70, 77),
      body: ListView(children: [
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 127),
              child: SizedBox(
                height: 50,
                width: 80,
                child: Text(
                  'English (US)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.asset(
                    'assets/icon.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
              ),
              height: 60,
              width: 345,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  controller: Email,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Username, email or mobile number',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 60,
              width: 345,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  controller: Password,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), //
              ),
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (Email.text.isNotEmpty && Password.text.isNotEmpty) {
                    if (Checker(Email.text, Password.text)) {
                      //print('Pass Hogya Sir Yahan se dosra Page call karo');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    } else {
                      print('Password galat h ');
                    }
                  } else {
                    print('Wrong UserName Or Password');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const InkWell(
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 48, 70, 77),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        color: Colors.blue, width: 2), // Border color and width
                    borderRadius: BorderRadius.circular(30), // Border radius
                  ),
                ),
                child: const Text(
                  'Create new account',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 60,
              child: Image.asset('assets/meta.png'),
            ),
          ],
        ),
      ]),
    );
  }
}
