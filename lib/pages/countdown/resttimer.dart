import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const CountdownTimerDemo());
}

class CountdownTimerDemo extends StatelessWidget {
  const CountdownTimerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Counter',

      home: KindaCodeDemo(),
    );
  }
}

class KindaCodeDemo extends StatefulWidget {
  @override
  State<KindaCodeDemo> createState() => _KindaCodeDemoState();
}

class _KindaCodeDemoState extends State<KindaCodeDemo> {
  // The seconds, minutes and hours
  int _seconds = 0;
  int _minutes = 0;
  // int _hours = 0;

  // The state of the timer (running or not)
  bool _isRunning = false;

  // The timer
  Timer? _timer;

  // This function will be called when the user presses the start button
  // Start the timer
  // The timer will run every second
  // The timer will stop when the hours, minutes and seconds are all 0
  void _startTimer() {
    setState(() {
      _isRunning = true;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds > 0) {
          _seconds--;
        } else {
          if (_minutes > 0) {
            _minutes--;
            _seconds = 59;
          } else {
            if (_minutes > 0) {
              _minutes = 59;
              _seconds = 59;
            } else {
              _isRunning = false;
              _timer?.cancel();
            }
          }
        }
      });
    });
  }

  // This function will be called when the user presses the pause button
  // Pause the timer
  void _pauseTimer() {
    setState(() {
      _isRunning = false;
    });
    _timer?.cancel();
  }

  // This function will be called when the user presses the cancel button
  // Cancel the timer
  void _cancelTimer() {
    setState(() {
      _minutes = 0;
      _seconds = 0;
      _isRunning = false;
    });
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 211, 218, 255),
      appBar: AppBar(
        title: const Text('Rest Timer'),
        backgroundColor: Color(0xFF92A3FD),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Display remaining time in HH:MM:SS format
            Container(
              width: double.infinity,
              height: 200,
              child: Center(
                child: Text(
                  '${_minutes.toString().padLeft(2, '0')}:${_seconds.toString().padLeft(2, '0')}',
                  style: const TextStyle(
                      fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 50),
            // The 3 sliders to set minutes and seconds
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // The minutes slider and its heading text
                Text('Minutes: $_minutes',
                    style: const TextStyle(fontSize: 20)),
                Slider(
                  value: _minutes.toDouble(),
                  min: 0,
                  max: 10,
                  onChanged: (value) {
                    if (!_isRunning) {
                      setState(() {
                        _minutes = value.toInt();
                      });
                    }
                  },
                  divisions: 59,
                  label: 'Minutes: $_minutes',
                ),
                // The seconds slider and its heading text
                Text('Seconds: $_seconds',
                    style: const TextStyle(fontSize: 20)),
                Slider(
                  value: _seconds.toDouble(),
                  min: 0,
                  max: 59,
                  onChanged: (value) {
                    if (!_isRunning) {
                      setState(() {
                        _seconds = value.toInt();
                      });
                    }
                  },
                  divisions: 59,
                  label: 'Seconds: $_seconds',
                ),
              ],
            ),
            const SizedBox(height: 50),
            // The start/pause and cancel buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // The start/pause button
                // The text on the button changes based on the state (_isRunning)
                ElevatedButton(
                  onPressed: () {
                    if (_isRunning) {
                      _pauseTimer();
                    } else {
                      _startTimer();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: (Color(0xFF92A3FD)),
                      fixedSize: const Size(150, 40)),
                  child: _isRunning ? const Text('Pause') : const Text('Start'),
                ),
                // The cancel button
                ElevatedButton(
                  onPressed: _cancelTimer,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 232, 85, 75),
                      fixedSize: const Size(150, 40)),
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Cancel the timer when the widget is disposed
  @override
  void dispose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    super.dispose();
  }
}
