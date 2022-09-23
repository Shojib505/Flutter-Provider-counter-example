import 'package:flutter/material.dart';
import 'package:flutter_provider_counter_example/example_sec/custom_slider.dart';
import 'package:flutter_provider_counter_example/example_sec/progress_value_provider.dart';
import 'package:flutter_provider_counter_example/example_sec/video_progress.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'timer_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /*  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => TimerInfo(),
        child: HomePage(),
      ),
    );
  }
 */

  // This is anoter example for provider
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ChangeNotifierProvider(
          create: (_) => ProgressValue(),
          child: Center(
            child: Stack(
              children: [
                Expanded(child: VideoProgress()),
                const Positioned(
                  child: CustomSlider(),
                  bottom: 0,
                  left: 0,
                  right: 0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
