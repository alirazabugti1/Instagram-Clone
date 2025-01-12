import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var postdetails = [5, 10, 15];

  List<bool> favorites = [false, false, false];

  void toggleFavorite(int index) {
    setState(() {
      favorites[index] = !favorites[index];

      if (favorites[index] == true) {
        postdetails[index] += 1;
      } else {
        postdetails[index] -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 20),
            child: Text(
              'Instagram',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Schyler', fontSize: 28),
            ),
          ),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.only(left: 135.0, top: 30),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 30,
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: Icon(
                Icons.near_me,
                color: Colors.white,
                size: 30,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const SizedBox(
            width: 5,
          ),
          SizedBox(
              height: 100,
              width: 80,
              child: Stack(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/pic.jpeg',
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 50,
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 70, left: 5),
                    child: Text(
                      'Your Story',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 100,
            width: 80,
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/men2.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.fill,
                  ),
                ),
                const Text(
                  'William',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: 80,
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/instagram.png',
                    height: 70,
                    width: 70,
                  ),
                ),
                const Text(
                  'Instagram',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: 80,
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/daraz.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.fill,
                  ),
                ),
                const Text(
                  'Daraz.pk',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: 80,
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/men3.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.fill,
                  ),
                ),
                const Text(
                  'Jack Hebrew',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 2,
                ),
              ],
            ),
          ),
        ]),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: SizedBox(
              height: 30,
              width: 30,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                child: Image.asset(
                  'assets/bykea.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Bykea',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors.blue,
                    size: 20,
                  ),
                ],
              ),
              Text(
                'Pakistan',
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 3.0),
        child: SizedBox(
          height: 350,
          width: 360,
          child: Image.asset('assets/bykeacontainer.jpeg'),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: InkWell(
              onTap: () => toggleFavorite(0),
              child: Icon(
                favorites[0] ? Icons.favorite : Icons.favorite_border,
                color: favorites[0] ? Colors.red : Colors.white,
                size: 28,
              ),
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            postdetails[0].toString(),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.comment,
            color: Colors.white,
            size: 28,
          ),
          const SizedBox(
            width: 3,
          ),
          const Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.near_me,
            color: Colors.white,
            size: 28,
          ),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(
                child: Image.asset(
                  'assets/beanicon.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Rowan Atkinson',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors.blue,
                    size: 20,
                  ),
                ],
              ),
              Text(
                'United States',
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 3.0),
        child: SizedBox(
          width: 360,
          child: Image.asset('assets/beancontainer.jpeg'),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: InkWell(
              onTap: () => toggleFavorite(1),
              child: Icon(
                favorites[1] ? Icons.favorite : Icons.favorite_border,
                color: favorites[1] ? Colors.red : Colors.white,
                size: 28,
              ),
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            postdetails[1].toString(),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.comment,
            color: Colors.white,
            size: 28,
          ),
          const SizedBox(
            width: 3,
          ),
          const Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.near_me,
            color: Colors.white,
            size: 28,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 7),
            child: SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(
                child: Image.asset(
                  'assets/hpicon.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'HP',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors.blue,
                    size: 20,
                  ),
                ],
              ),
              Text(
                'United States',
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 3.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1),
          ),
          width: 360,
          child: Image.asset(
            'assets/hpcontainer.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: InkWell(
              onTap: () => toggleFavorite(2),
              child: Icon(
                favorites[2] ? Icons.favorite : Icons.favorite_border,
                color: favorites[2] ? Colors.red : Colors.white,
                size: 28,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            postdetails[2].toString(),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.comment,
            color: Colors.white,
            size: 28,
          ),
          const SizedBox(
            width: 3,
          ),
          const Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.near_me,
            color: Colors.white,
            size: 28,
          ),
        ],
      ),
    ]));
  }
}
