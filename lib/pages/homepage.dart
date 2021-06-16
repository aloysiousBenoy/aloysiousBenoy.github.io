import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: _size.height,
        width: _size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(149, 0, 240, 1),
          Color.fromRGBO(76, 0, 123, 1)
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: Stack(
          children: [
            Positioned(
              top: _size.height * 0.10,
              right: _size.width * 0.10,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 254, 255, 0.62),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            Positioned(
              bottom: _size.height * 0.15,
              left: _size.width * 0.15,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 254, 255, 0.62),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    height: _size.height * 0.65,
                    width: _size.width * 0.65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 154, 154, 0.68),
                              Color.fromRGBO(255, 255, 255, 0.5)
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 5,
                            left: 52,
                          ),
                          height: _size.height * 0.57,
                          width: _size.width * 0.17,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white.withOpacity(0.09),
                                    Color.fromRGBO(255, 255, 255, 0.76)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: Container(
                            padding:
                                EdgeInsets.only(top: 20, left: 10, right: 10),
                            height: _size.height * 0.57,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Aloysious Benoy",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "developer | gamer",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Center(
                          child: Text(
                            "Coming Soon",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Colors.white),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
