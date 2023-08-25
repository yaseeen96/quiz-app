import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz, {
    super.key,
  });

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            color: const Color.fromARGB(115, 239, 237, 232),
            image: const AssetImage("assets/images/quiz-logo.png"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Learn Flutter the fun way",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            height: 100,
            width: MediaQuery.of(context).size.width * 0.6,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  )),
              onPressed: startQuiz,
              label: const Text(
                "Start quiz",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              icon: const Icon(
                Icons.arrow_right_alt,
                size: 40,
              ),
            ),
          ),
          const Text(
            "Powered by Standard Touch",
            style: TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )
        ],
      ),
    );
  }
}
