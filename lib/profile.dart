import 'package:flutter/material.dart';
import 'package:instagram/Drawer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //Material For custom navigation bar in profile page

  List<Widget> pages = [
    const Center(
      child: Column(
        children: [
          Text(
            'Capture The Moment',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'With a friend',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Create Your First Post',
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    ),
    const Center(
      child: Column(
        children: [
          Text(
            'Share a moment with the world',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Create your first reel',
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    ),
    const Center(
      child: Column(
        children: [
          Text(
            'Photos and videos of you',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10.0),
          Text(
            'When people tag you in the photos and videos, they\'ll appear here',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  ];

  var currentindex = 0;
  int follow = 0;

  void ontabtapped(int index) {
    setState(() {
      currentindex = index;
    });
  }

  List<bool> isfollowing = [false, false, false, false];

  void toggle(int postnumber) {
    setState(() {
      isfollowing[postnumber] = !isfollowing[postnumber];
      if (isfollowing[postnumber] == true) {
        follow++;
      } else {
        follow--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 48, 70, 77),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.lock_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'ali_raza6521 ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    '@',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Icon(
                    Icons.add_box_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const draw())),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/pic.jpeg',
                            height: 90,
                            width: 90,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 75,
                        left: 70,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )),
                  ]),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: [
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      children: [
                        Text(
                          follow.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Text(
                          'Following',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'علی رضا',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Share Profile",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 30,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.person_add_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Discover People',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 210,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 120.0),
                            child: Icon(Icons.clear),
                          ),
                          SizedBox(
                            height: 80,
                            width: 90,
                            child: Center(
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/maju.png',
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'MAJU OFFICAL',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            'Suggested for you',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 30,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: InkWell(
                              onTap: () => toggle(0),
                              child: Center(
                                  child: isfollowing[0]
                                      ? const Text(
                                          'Following',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : const Text(
                                          'Follow',
                                          style: TextStyle(color: Colors.white),
                                        )),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 210,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 120.0),
                            child: Icon(Icons.clear),
                          ),
                          SizedBox(
                            height: 80,
                            width: 90,
                            child: Center(
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/weishen.png',
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'GAMING COMMUNITY',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            'Suggested for you',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 30,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: InkWell(
                              onTap: () => toggle(1),
                              child: Center(
                                  child: isfollowing[1]
                                      ? const Text(
                                          'Following',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : const Text(
                                          'Follow',
                                          style: TextStyle(color: Colors.white),
                                        )),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 210,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 120.0),
                            child: Icon(Icons.clear),
                          ),
                          SizedBox(
                            height: 80,
                            width: 90,
                            child: Center(
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/meme.png',
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Memes Official',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            'Suggested for you',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 30,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: InkWell(
                              onTap: () => toggle(2),
                              child: Center(
                                  child: isfollowing[2]
                                      ? const Text(
                                          'Following',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : const Text(
                                          'Follow',
                                          style: TextStyle(color: Colors.white),
                                        )),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 210,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 120.0),
                            child: Icon(Icons.clear),
                          ),
                          SizedBox(
                            height: 80,
                            width: 90,
                            child: Center(
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/linkedin.png',
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Linked In',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            'Suggested for you',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 30,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: InkWell(
                                  onTap: () => toggle(3),
                                  child: isfollowing[3]
                                      ? const Text(
                                          'Following',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : const Text(
                                          'Follow',
                                          style: TextStyle(color: Colors.white),
                                        )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () => ontabtapped(0),
                    ),
                    IconButton(
                      icon: const Icon(Icons.home, color: Colors.white),
                      onPressed: () => ontabtapped(1),
                    ),
                    IconButton(
                      icon:
                          const Icon(Icons.account_circle, color: Colors.white),
                      onPressed: () => ontabtapped(2),
                    ),
                  ],
                ),
              ),
              IndexedStack(index: currentindex, children: pages),
            ],
          ),
        ),
      ),
    );
  }
}
