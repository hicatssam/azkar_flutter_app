import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}


class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3,) ,(){
      Navigator.pushReplacementNamed(context, 'homeScreen');
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: AlignmentDirectional.center,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: AlignmentDirectional.bottomEnd,
              end: AlignmentDirectional.center,
              colors: [Colors.teal, Colors.cyan ,Colors.white],
            )),
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Image.asset('images/img-unstraion.png', height: 120, width: 100)),

                  const Expanded(
                    flex: 2,
                    child: Text(
                      'Azkar',
                      style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
