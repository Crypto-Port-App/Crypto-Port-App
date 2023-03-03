// This screen will be shown if the user chooses to continue as a guest.

// KNOWN ISSUE: The checkbox is not unchecking when the user clicks on it.

import 'package:flutter/material.dart';

import '../../Core/Animations/fade_animation.dart';
import '../../Core/Colors/hex_color.dart';
import '../Login Screen/login_screen.dart';

class GuestScreen extends StatefulWidget {
  const GuestScreen({super.key});

  @override
  State<GuestScreen> createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  bool _showAgain = false;

  void checkboxCallBack(bool? checkboxState) {
    setState(() {
      _showAgain = checkboxState ?? true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.1, 0.5, 0.7, 0.9],
              colors: [
                HexColor("#4b4293").withOpacity(0.8),
                HexColor("#4b4293"),
                HexColor("#08418e"),
                HexColor("#08418e")
              ],
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: const NetworkImage(
                  'https://mir-s3-cdn-cf.behance.net/project_modules/fs/01b4bd84253993.5d56acc35e143.jpg'),
            ),
          ),
          child: Center(
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                Card(
                    elevation: 5,
                    color: const Color.fromARGB(255, 171, 211, 250)
                        .withOpacity(0.4),
                    child: Container(
                        width: 400,
                        padding: const EdgeInsets.all(40.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FadeAnimation(
                              delay: 0.8,
                              child: Image.asset(
                                'assets/images/guest.png',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const FadeAnimation(
                              delay: 1,
                              child: Text(
                                'You are continuing as a guest. Some features may not be available.',
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 0.5),
                              ),
                            ),
                            const SizedBox(height: 10),
                            FadeAnimation(
                                delay: 1,
                                child: ListTile(
                                    title: const Text(
                                      'Do not show this again',
                                    ),
                                    trailing: ReminderCheckbox(
                                        _showAgain, checkboxCallBack))),
                            const SizedBox(height: 10),
                            FadeAnimation(
                              delay: 1,
                              child: TextButton(
                                  onPressed: () {
                                    // TODO: Navigate to the home screen.
                                  },
                                  style: TextButton.styleFrom(
                                      backgroundColor: Color(0xFF2697FF),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14.0, horizontal: 80),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0))),
                                  child: const Text(
                                    'Continue',
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            )
                          ],
                        ))),

                // End of Center Card
                // Start of outer Card

                const SizedBox(height: 10),
                FadeAnimation(
                    delay: 1,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Changed your mind?',
                              style: TextStyle(
                                  color: Colors.grey, letterSpacing: 0.5)),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const LoginScreen();
                              }));
                            },
                            child: Text(' Sign in',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9),
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5,
                                    fontSize: 14)),
                          ),
                        ]))
              ])))),
    );
  }
}

class ReminderCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;

  const ReminderCheckbox(this.checkboxState, this.toggleCheckboxState,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
