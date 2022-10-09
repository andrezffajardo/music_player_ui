import 'package:flutter/material.dart';
import 'package:music_player_ui/box.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                //back button and menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: Box(
                        child: Icon(Icons.arrow_back_rounded),
                      ),
                    ),
                    const Text('P L A Y L I S T',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: Box(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                //cover art, artist name, song name
                Box(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 6,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('lib/images/cover_art.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Judgement (& Punishment)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.grey.shade700)),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Jinjer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                //start time, shuffle button, repat button, end time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('0:00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("5.36")
                  ],
                ),
                const SizedBox(height: 30),
                //linear progress bar
                Box(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.7,
                    progressColor: Color(0XFF2D8A80),
                    backgroundColor: Color(0X802D8A80),
                  ),
                ),

                const SizedBox(height: 30),

                SizedBox(
                  height: 80,
                  child: Row(
                    children: const [
                      Expanded(
                        child: Box(
                            child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        )),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Box(
                              child: Icon(
                            Icons.play_arrow,
                            size: 32,
                          )),
                        ),
                      ),
                      Expanded(
                        child: Box(
                            child: Icon(
                          Icons.skip_next,
                          size: 32,
                        )),
                      ),
                    ],
                  ),
                )

                // previous song, pause play, skip next song
              ],
            ),
          ),
        ));
  }
}
