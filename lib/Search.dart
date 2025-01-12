import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late VideoPlayerController controller;

  Future<void> initialize() async {
    controller = VideoPlayerController.asset('assets/videos/videoplayback.mp4');
    await controller.initialize();
    controller.play();
    controller.setVolume(0.0);
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 40),
            child: SizedBox(
              width: 340,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  prefixIcon: const Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 240,
                  width: 125,
                  color: Colors.blue,
                  child: controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: controller.value.aspectRatio,
                          child: VideoPlayer(controller),
                        )
                      : const Center(child: CircularProgressIndicator()),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, top: 12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 110,
                        width: 100,
                        child: Image.asset(
                          'assets/pic1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        height: 110,
                        width: 100,
                        child: Image.asset(
                          'assets/pic2.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, top: 12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 110,
                        width: 110,
                        child: Image.asset(
                          'assets/pic3.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        height: 110,
                        width: 110,
                        child: Image.asset(
                          'assets/pic4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          GridView.count(
            crossAxisCount: 3,
            padding: EdgeInsets.zero,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic5.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic6.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic7.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic8.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic9.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic10.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic11.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic12.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic13.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic14.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic15.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic16.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic17.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic18.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
                width: 10,
                child: Image.asset(
                  'assets/pic19.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
