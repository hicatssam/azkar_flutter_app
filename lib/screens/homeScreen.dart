import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _content = 'سبحان الله';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: () {
            setState(() {
              ++_counter;
            });
          },
          child: Icon(Icons.plus_one_outlined),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          title: const Text('مسبحة الأذكار',
              style: TextStyle(color: Colors.black, fontFamily: 'Noto')),
          centerTitle: true,
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                if(_content != value){
                  setState(() {
                    _content = value;
                    _counter = 0;
                  });
                }
              },
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: 'سبحان الله',
                    child: Text('سبحان الله'),
                  ),
                  const PopupMenuItem(
                    value: 'الحمد الله',
                    child: Text('الحمد الله'),
                  ),
                  const PopupMenuItem(
                    value: 'لا إله إلا الله',
                    child: Text('لا إله إلا الله'),
                  ),
                  const PopupMenuItem(
                    value: 'الله أكبر',
                    child: Text('الله أكبر'),
                  ),
                ];
              },
            )
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/img_bg.jpeg'), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white60,
                backgroundImage: AssetImage('images/img-unstraion.png'),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                clipBehavior: Clip.antiAlias,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 5),
                          blurRadius: 6),
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(5, 0),
                          blurRadius: 6),
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(-5, 0),
                          blurRadius: 6),
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, -5),
                          blurRadius: 6),
                    ]),
                child: Row(
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Colors.teal,
                      ),
                      child: SizedBox(
                        height: double.infinity,
                        width: 50,
                        child: Center(
                          child: Text(
                            _counter.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Noto',
                            ),
                          ),
                        ),
                      ),
                    ),
                     Expanded(
                        child: Text(
                      _content,
                      style: const TextStyle(
                        fontSize: 30,
                        fontFamily: 'Noto',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(10),
                            ))),
                        onPressed: () {
                          setState(() {
                            _counter = 0;
                          });
                        },
                        child: const Text(
                          'إعادة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Noto',
                              fontSize: 22),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(10),
                            ))),
                        onPressed: () {
                          setState(() {
                            ++_counter;
                          });
                        },
                        child: const Text(
                          'تسبيح',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Noto',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
