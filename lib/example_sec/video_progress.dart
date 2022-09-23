import 'package:flutter/material.dart';

late _VideoProgressState stateOfVideoProgress;

class VideoProgress extends StatefulWidget {
  const VideoProgress({Key? key}) : super(key: key);

  @override
  State<VideoProgress> createState() {
    stateOfVideoProgress = _VideoProgressState();
    return stateOfVideoProgress;
  }
}

class _VideoProgressState extends State<VideoProgress> {
  var progress = 10.00;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Video Progress\n${progress.toStringAsFixed(2)}',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
