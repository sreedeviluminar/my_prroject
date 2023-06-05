import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:my_prroject/home.dart';
import 'package:my_prroject/statefulLogin.dart';

void main() {
  runApp(MaterialApp(
    home: IntroScreen(),
  ));
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "First Page",
          body:
              "Introduction/Onboarding package for flutter app with some customizations possibilities",
          image: introImage(
              "https://images.unsplash.com/photo-1685513733856-6770dd79a805?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80"),
        ),
        PageViewModel(
            title: "Second Page",
            body:
                "Introduction/Onboarding package for flutter app with some customizations possibilities",
            footer: introImage(
              "https://plus.unsplash.com/premium_photo-1674939148553-9ca55be9b037?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
            )),
        PageViewModel(
          title: "Third Page",
          body:
              "Introduction/Onboarding package for flutter app with some customizations possibilities",
          image: introImage(
              "https://plus.unsplash.com/premium_photo-1674062989163-0a0dc337cee6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
        ),
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginPage2())),
      showSkipButton: true,
      skip: const Text("Skip"),
      // showBackButton: true,
      // back: Text("back"),
      next: const Icon(Icons.arrow_forward_rounded),
      done: const Text("Done"),
      dotsDecorator: const DotsDecorator(
          size: Size(12, 10),
          color: Colors.yellow,
          activeSize: Size(22, 10),
          activeColor: Colors.green,
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
    );
  }

  Widget introImage(String image) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Image.network(
        image,
        width: 300,
      ),
    );
  }
}
