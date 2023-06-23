import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class Category extends StatelessWidget {
  final String text1;
  final Color color1;
  final Function? screen;

  const Category({
    super.key,
    required this.text1,
    required this.color1,
    this.screen,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        if (screen != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen!()),
          );
        }
      },
      child: Container(
        height: screenWidth * 0.2,
        alignment: Alignment.centerLeft,
        color: color1,
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.06,
          ),
          child: Text(
            text1,
            style: TextStyle(fontSize: screenWidth * 0.07),
          ),
        ),
      ),
    );
  }
}

class NumberContainers extends StatefulWidget {
  final String text1;
  final String image1;
  final String sound1;

  const NumberContainers(
      {super.key,
      required this.image1,
      required this.text1,
      required this.sound1});

  @override
  State<NumberContainers> createState() => _NumberContainersState();
}

class _NumberContainersState extends State<NumberContainers> {
  bool isPlaying = false;
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  Future<void> _playAudio() async {
    final audioData = await rootBundle.load(widget.sound1);
    final Uint8List audioBytes = audioData.buffer.asUint8List();
    await player.playBytes(audioBytes);

    setState(() {
      isPlaying = true;
    });

    player.onPlayerCompletion.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          color: const Color.fromARGB(255, 228, 219, 140),
          child: Image.asset(
            widget.image1,
            height: screenWidth * 0.331,
            width: screenWidth * 0.337,
          ),
        ),
        Container(
          height: screenWidth * 0.331,
          width: screenWidth * 0.663,
          color: const Color.fromARGB(255, 171, 173, 0),
          child: Row(
            children: [
              Text(
                widget.text1,
                style: TextStyle(fontSize: screenWidth * 0.09),
              ),
              const Spacer(flex: 9),
              IconButton(
                onPressed: () {
                  if (!isPlaying) {
                    _playAudio();
                  } else {
                    player.pause();
                    setState(() {
                      isPlaying = false;
                    });
                  }
                },
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  size: screenWidth * 0.12,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ],
    );
  }
}

class NumberFamilyContainers extends StatefulWidget {
  final String text2;
  final String image2;
  final String sound2;

  const NumberFamilyContainers(
      {super.key,
      required this.image2,
      required this.text2,
      required this.sound2});

  @override
  // ignore: library_private_types_in_public_api
  _NumberFamilyContainersState createState() => _NumberFamilyContainersState();
}

class _NumberFamilyContainersState extends State<NumberFamilyContainers> {
  bool isPlaying = false;
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  Future<void> _playAudio() async {
    final audioData = await rootBundle.load(widget.sound2);
    final Uint8List audioBytes = audioData.buffer.asUint8List();
    await player.playBytes(audioBytes);

    setState(() {
      isPlaying = true;
    });

    player.onPlayerCompletion.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          color: const Color.fromARGB(255, 255, 251, 219),
          child: Image.asset(
            widget.image2,
            height: screenWidth * 0.331,
            width: screenWidth * 0.337,
          ),
        ),
        Container(
          height: screenWidth * 0.331,
          width: screenWidth * 0.663,
          color: const Color.fromARGB(255, 3, 154, 209),
          child: Row(
            children: [
              Text(
                widget.text2,
                style: TextStyle(fontSize: screenWidth * 0.07),
              ),
              const Spacer(flex: 1),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.03),
                child: IconButton(
                  onPressed: () {
                    if (!isPlaying) {
                      _playAudio();
                    } else {
                      player.pause();
                      setState(() {
                        isPlaying = false;
                      });
                    }
                  },
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    size: screenWidth * 0.12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NumberColorsContainers extends StatefulWidget {
  final String text1;
  final String image1;
  final String sound1;

  const NumberColorsContainers(
      {super.key,
      required this.image1,
      required this.text1,
      required this.sound1});

  @override
  // ignore: library_private_types_in_public_api
  _NumberColorsContainersState createState() => _NumberColorsContainersState();
}

class _NumberColorsContainersState extends State<NumberColorsContainers> {
  bool isPlaying = false;
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  Future<void> _playAudio() async {
    final audioData = await rootBundle.load(widget.sound1);
    final Uint8List audioBytes = audioData.buffer.asUint8List();
    await player.playBytes(audioBytes);

    setState(() {
      isPlaying = true;
    });

    player.onPlayerCompletion.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          color: const Color.fromARGB(255, 231, 231, 231),
          child: Image.asset(
            widget.image1,
            height: screenWidth * 0.331,
            width: screenWidth * 0.337,
          ),
        ),
        Container(
          height: screenWidth * 0.331,
          width: screenWidth * 0.663,
          color: const Color.fromARGB(255, 192, 205, 102),
          child: Row(
            children: [
              Text(
                widget.text1,
                style: TextStyle(fontSize: screenWidth * 0.07),
              ),
              const Spacer(flex: 1),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.03),
                child: IconButton(
                  onPressed: () {
                    if (!isPlaying) {
                      _playAudio();
                    } else {
                      player.pause();
                      setState(() {
                        isPlaying = false;
                      });
                    }
                  },
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    size: screenWidth * 0.12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NumberphasesContainers extends StatefulWidget {
  final String text1;
  final String sound1;

  const NumberphasesContainers(
      {super.key, required this.text1, required this.sound1});

  @override
  // ignore: library_private_types_in_public_api
  _NumberphasesContainersState createState() => _NumberphasesContainersState();
}

class _NumberphasesContainersState extends State<NumberphasesContainers> {
  bool isPlaying = false;
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  Future<void> _playAudio() async {
    final audioData = await rootBundle.load(widget.sound1);
    final Uint8List audioBytes = audioData.buffer.asUint8List();
    await player.playBytes(audioBytes);

    setState(() {
      isPlaying = true;
    });

    player.onPlayerCompletion.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: screenWidth * 0.331,
          width: screenWidth * 0.9999,
          color: const Color.fromARGB(255, 226, 234, 184),
          child: Row(
            children: [
              Text(
                widget.text1,
                style: TextStyle(fontSize: screenWidth * 0.07),
              ),
              const Spacer(flex: 1),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.03),
                child: IconButton(
                  onPressed: () {
                    if (!isPlaying) {
                      _playAudio();
                    } else {
                      player.pause();
                      setState(() {
                        isPlaying = false;
                      });
                    }
                  },
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    size: screenWidth * 0.12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



/*
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';

class Category extends StatelessWidget {
  var text1;
  var color1;
  var text2;
  Function? screen;
  Category({
    this.text1,
    this.text2,
    this.color1,
    this.screen,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen!()),
        );
      },
      child: Container(
        height: screenWidth * 0.2,
        alignment: Alignment.centerLeft,
        color: color1,
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.06,
          ),
          child: Text(
            "$text1",
            style: TextStyle(fontSize: screenWidth * 0.07),
          ),
        ),
      ),
    );
  }
}

class NumberContainers extends StatefulWidget {
  var text1;
  var image1;
  var sound1;

  NumberContainers({this.image1, this.text1, this.sound1});

  @override
  State<NumberContainers> createState() => _NumberContainersState();
}

class _NumberContainersState extends State<NumberContainers> {
  bool isPlaying = false;
  AudioPlayer player = AudioPlayer();

  void _playAudio() async {
    final audioData = await rootBundle.load(widget.sound1);
    final Uint8List audioBytes = audioData.buffer.asUint8List();
    await player.playBytes(audioBytes);

    setState(() {
      isPlaying = true;
    });

    player.onPlayerCompletion.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          color: Color.fromARGB(255, 228, 219, 140),
          child: Image.asset(
            "${widget.image1}",
            height: screenWidth * 0.331,
            width: screenWidth * 0.337,
          ),
        ),
        Container(
          height: screenWidth * 0.331,
          width: screenWidth * 0.663,
          color: Color.fromARGB(255, 139, 141, 0),
          child: Row(
            children: [
              Text(
                "${widget.text1}",
                style: TextStyle(fontSize: screenWidth * 0.09),
              ),
              Spacer(
                flex: 9,
              ),
              IconButton(
                onPressed: () {
                  if (!isPlaying) {
                    _playAudio();
                  } else {
                    player.pause();
                    setState(() {
                      isPlaying = false;
                    });
                  }
                },
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  size: screenWidth * 0.12,
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NumberFamilyContainers extends StatefulWidget {
  var text2;
  var image2;
  var sound2;

  NumberFamilyContainers({this.image2, this.text2, this.sound2});

  @override
  _NumberFamilyContainersState createState() => _NumberFamilyContainersState();
}

class _NumberFamilyContainersState extends State<NumberFamilyContainers> {
  bool isPlaying = false;
  AudioPlayer player = AudioPlayer();

  void _playAudio() async {
    final audioData = await rootBundle.load(widget.sound2);
    final Uint8List audioBytes = audioData.buffer.asUint8List();
    await player.playBytes(audioBytes);

    setState(() {
      isPlaying = true;
    });

    player.onPlayerCompletion.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          color: Color.fromARGB(255, 255, 251, 219),
          child: Image.asset(
            "${widget.image2}",
            height: screenWidth * 0.331,
            width: screenWidth * 0.337,
          ),
        ),
        Container(
          height: screenWidth * 0.331,
          width: screenWidth * 0.663,
          color: Color.fromARGB(255, 3, 154, 209),
          child: Row(
            children: [
              Text(
                "${widget.text2}",
                style: TextStyle(fontSize: screenWidth * 0.07),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.03),
                child: IconButton(
                  onPressed: () {
                    if (!isPlaying) {
                      _playAudio();
                    } else {
                      player.pause();
                      setState(() {
                        isPlaying = false;
                      });
                    }
                  },
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    size: screenWidth * 0.12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NumberColorsContainers extends StatefulWidget {
  var text1;
  var image1;
  var sound1;

  NumberColorsContainers({this.image1, this.text1, this.sound1});

  @override
  _NumberColorsContainersState createState() => _NumberColorsContainersState();
}

class _NumberColorsContainersState extends State<NumberColorsContainers> {
  bool isPlaying = false;
  AudioPlayer player = AudioPlayer();

  void _playAudio() async {
    final audioData = await rootBundle.load(widget.sound1);
    final Uint8List audioBytes = audioData.buffer.asUint8List();
    await player.playBytes(audioBytes);

    setState(() {
      isPlaying = true;
    });

    player.onPlayerCompletion.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          color: Color.fromARGB(255, 231, 231, 231),
          child: Image.asset(
            "${widget.image1}",
            height: screenWidth * 0.331,
            width: screenWidth * 0.337,
          ),
        ),
        Container(
          height: screenWidth * 0.331,
          width: screenWidth * 0.663,
          color: Color.fromARGB(255, 123, 204, 255),
          child: Row(
            children: [
              Text(
                "${widget.text1}",
                style: TextStyle(fontSize: screenWidth * 0.07),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.03),
                child: IconButton(
                  onPressed: () {
                    if (!isPlaying) {
                      _playAudio();
                    } else {
                      player.pause();
                      setState(() {
                        isPlaying = false;
                      });
                    }
                  },
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    size: screenWidth * 0.12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
 */