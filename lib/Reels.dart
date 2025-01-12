import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  List<VideoPlayerController> controllers = [];
  List<int> likescount = [1101, 196, 12, 236, 125];
  List<bool> likes = [false, false, false, false, false];

  List<String> titles = [
    'Kon hai ye log🤣😛,',
    '😛Ab To Job Paki Hai😛',
    'Use Headphones🎧❤️',
    'Follow For More Statuses👉💕',
    'Inshallah One Day☝️❤️'
  ];

  String gotUser = 'Ali Raza Bugti';

  List<String> profiles = [
    'Memes Official',
    'Ashir Ki Memes',
    'Songs For Status',
    'Movies Shorts',
    'Islamic Videos'
  ];
  List<String> icons = [
    'assets/reel/meme1.png',
    'assets/reel/meme2.png',
    'assets/reel/status1.png',
    'assets/reel/status2.png',
    'assets/reel/islamic.png',
  ];
  List<List<String>> users = [
    ['Ali Raza Bugti', 'Saif Ali'],
    ['Mumtaz Ali', 'Ahsan'],
    ['Meer Hasnain', 'Ayaz Hussain'],
    ['Waseem', 'Prince ki Memes'],
    ['Mufti Sami', 'Harry Here'],
  ];

  List<List<String>> allpostscomment = [
    ['Hahahaha😁🤣', 'Ye Patwari Hai😁'],
    [
      'Modi BSCS graduate from Daraz',
      'Quantum Computation❌Kauntam Computation☑️'
    ],
    ['❤️💞💙', 'Full Song link? 💙'],
    ['Favorite Movie 💞', 'Attitude 🤍'],
    ['Mashallah', 'I Love Madinah🧡'],
  ];

  TextEditingController cont = TextEditingController();

  void call(int index) {
    setState(() {
      if (cont.text.isNotEmpty) {
        allpostscomment[index].add(cont.text);
        cont.clear();
        users[index].add(gotUser);
      }
    });
  }

  void toggle(int index) {
    setState(() {
      likes[index] = !likes[index];
      likescount[index] += likes[index] ? 1 : -1;
    });
  }

  PageController pageController = PageController();

  List<String> path = [
    'assets/videos/videoplayback.mp4',
    'assets/videos/videoplayback2.mp4',
    'assets/videos/videoplayback3.mp4',
    'assets/videos/videoplayback4.mp4',
    'assets/videos/videoplayback5.mp4',
  ];

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    for (String address in path) {
      VideoPlayerController controller = VideoPlayerController.asset(address);
      await controller.initialize();
      controllers.add(controller);
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  void dispose() {
    pauseAllVideos();
    pageController.dispose();
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void pauseAllVideos() {
    for (var controller in controllers) {
      if (controller.value.isInitialized && controller.value.isPlaying) {
        controller.pause();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.vertical,
        itemCount: controllers.length,
        onPageChanged: (index) {
          pauseAllVideos();
          if (controllers[index].value.isInitialized) {
            controllers[index].play();
          }
        },
        itemBuilder: (context, index) {
          final controller = controllers[index];
          return Stack(
            children: [
              Center(
                child: controller.value.isInitialized
                    ? SizedBox(
                        height: screensize.height,
                        width: screensize.width,
                        child: AspectRatio(
                          aspectRatio: controller.value.aspectRatio,
                          child: VideoPlayer(controller),
                        ),
                      )
                    : const CircularProgressIndicator(),
              ),
              Positioned(
                bottom: 330,
                left: 310,
                child: InkWell(
                  onTap: () => toggle(index),
                  child: Column(
                    children: [
                      Icon(
                        likes[index] ? Icons.favorite : Icons.favorite_border,
                        color: likes[index] ? Colors.red : Colors.white,
                        size: 35,
                      ),
                      Text(
                        likescount[index].toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 255,
                left: 310,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return DraggableScrollableSheet(
                          initialChildSize: 0.5,
                          minChildSize: 0.3,
                          maxChildSize: 0.7,
                          builder:
                              (context, ScrollController scrollController) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ListView.builder(
                                      controller: scrollController,
                                      itemCount: allpostscomment[index].length,
                                      itemBuilder: (context, commentIndex) {
                                        return ListTile(
                                          leading: const Icon(Icons.face),
                                          trailing: const Icon(Icons.favorite),
                                          title: Text(
                                            users[index][commentIndex],
                                            style: const TextStyle(
                                                color: Colors.black),
                                          ),
                                          subtitle: Text(
                                            allpostscomment[index]
                                                [commentIndex],
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '😁',
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      Text('😍',
                                          style: TextStyle(fontSize: 25)),
                                      Text(
                                        '🥵',
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      Text(
                                        '💗',
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      Text(
                                        '👿',
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      Text(
                                        '👍',
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom,
                                    ),
                                    child: SizedBox(
                                        width: 335,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  color: Colors.transparent),
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        bottom: 8, left: 5),
                                                hintText: 'Enter a comment',
                                                hintStyle: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                                suffixIcon: InkWell(
                                                  onTap: () => call(index),
                                                  child: const Icon(
                                                    Icons.near_me,
                                                    size: 30,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                border: InputBorder
                                                    .none, // Remove default border
                                              ),
                                              controller: cont,
                                            ),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: const Column(
                    children: [
                      Icon(
                        Icons.comment,
                        color: Colors.white,
                        size: 35,
                      ),
                      Text(
                        '35',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                bottom: 190,
                left: 310,
                child: Column(
                  children: [
                    Icon(
                      Icons.near_me,
                      size: 35,
                      color: Colors.white,
                    ),
                    Text(
                      '25k',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Positioned(
                bottom: 140,
                left: 310,
                child: Icon(
                  Icons.more_vert,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              const Positioned(
                  top: 30,
                  left: 20,
                  child: Text(
                    'REELS',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
              Positioned(
                bottom: 70,
                left: 10,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            height: 30,
                            width: 30,
                            child: ClipOval(
                              child: Image.asset(
                                icons[index],
                                fit: BoxFit.cover,
                              ),
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          profiles[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 55.0),
                        child: Text(
                          titles[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
