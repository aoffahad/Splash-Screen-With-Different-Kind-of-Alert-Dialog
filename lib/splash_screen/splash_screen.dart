import 'package:flutter/material.dart';
import 'package:map_in_mac_two/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: animate ? 0 : -50,
              left: animate ? 0 : -50,
              height: 160.0,
              width: 160.0,
              child: Image(
                  image: AssetImage(
                "images/Color.png",
              ))),
          AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: 150,
              left: animate ? 30 : -30,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: animate ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Rider ",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      "Track Your Vehicle",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                   
                  ],
                ),
              )),
               AnimatedPositioned(
                        duration: Duration(milliseconds: 1600),
                        bottom: animate ? 300 : 0,
                        left: 0,
                        child: AnimatedOpacity(
                            duration: Duration(milliseconds: 1600),
                            opacity: animate ? 1 : 0,
                            child:
                                Image(image: AssetImage("images/Car2.png")))),
          AnimatedPositioned(
              duration: Duration(milliseconds: 2400),
              bottom: animate ? 100 : 0,
              left: 20,
              child: Container(
                height: 30,
                width: 30,
                color: Colors.amber,
              )),
          AnimatedPositioned(
              duration: Duration(milliseconds: 2000),
              bottom: animate ? 40 : 0,
              right: 30,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(100),
                ),
              )),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);

    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
