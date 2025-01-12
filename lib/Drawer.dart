import 'package:flutter/material.dart';
import 'package:instagram/LoginScreen.dart';

class draw extends StatefulWidget {
  const draw({super.key});

  @override
  State<draw> createState() => _drawState();
}

class _drawState extends State<draw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 70, 77),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('Settings and Privacy',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    contentPadding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Your account',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text('Meta', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, bottom: 5),
                child: Icon(
                  Icons.account_circle,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Accounts Center',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Passwords,Security,personal details, ad preferences',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 7.0),
                  child: Row(
                    children: [
                      Text(
                        '“Manage connected experiences across \nInstagram,Facebook, and Messenger.”',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25.0, right: 10),
                        child: Text(
                          'Learn More',
                          style: TextStyle(color: Colors.blue, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey,
            width: 400,
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Text(
                  'How you use Instagram',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 220,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Image.asset(
                    'assets/Icons/save.png',
                    height: 20,
                    width: 20,
                  ),
                  title: const Text(
                    'Saved',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: const Text(
                    '>',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/Icons/Story.png',
                    height: 20,
                    width: 20,
                  ),
                  title: const Text(
                    'Archive',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: const Text(
                    '>',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/Icons/player.png',
                    height: 20,
                    width: 20,
                  ),
                  title: const Text(
                    'Your activity',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: const Text(
                    '>',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.notification_add,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Notifications',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Text(
                    '>',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey,
            width: 400,
            height: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                (Route<dynamic> route) => false),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 40,
                width: 150,
                child: const Center(
                    child: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
