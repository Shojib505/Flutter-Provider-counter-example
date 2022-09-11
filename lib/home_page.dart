import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_provider_counter_example/timer_info.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (t) {
      var timerInfo = Provider.of<TimerInfo>(context, listen: false);
      timerInfo.updateRemainingTime();
      // setState(() {
      //   initalValue--;
      // });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('======strated from scratch=======');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset('assets/stopwatch.png'),
            const SizedBox(height: 32),
            Consumer<TimerInfo>(
              builder: (context, data, child) {
                return Text(data.getRemainingTime().toString(),
                    style: const TextStyle(fontSize: 72));
              },
            ),
          ],
        ),
      ),
    );
  }
}
