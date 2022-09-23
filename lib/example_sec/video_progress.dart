import 'package:flutter/material.dart';

class VideoProgress extends StatelessWidget {
  const VideoProgress({Key? key}) : super(key: key);

  final progress = 10.00;

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
