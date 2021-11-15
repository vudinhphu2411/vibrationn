import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:vibration/vibration.dart';

class TestVibration extends StatelessWidget {
  const TestVibration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: deprecated_member_use
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 190),
          child: SafeArea(
            child: Column(
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Vibration.vibrate(pattern: [500, 1000, 500, 2000]);
                      },
                      child: Text(
                        "Vibration",
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    ElevatedButton(
                      child: Text("Beep Success"),
                      onPressed: () => FlutterBeep.beep(),
                    ),
                    ElevatedButton(
                      child: Text("Beep Fail"),
                      onPressed: () => FlutterBeep.beep(false),
                    ),
                    ElevatedButton(
                      child: Text("Beep Android Custom"),
                      onPressed: () => FlutterBeep.playSysSound(
                          AndroidSoundIDs.TONE_CDMA_ABBR_ALERT),
                    ),
                    ElevatedButton(
                      child: Text("Beep something"),
                      onPressed: () => FlutterBeep.playSysSound(41),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
