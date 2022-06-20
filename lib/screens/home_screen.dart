// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lovestorm/widgets/home_screen_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    var fullheight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('data'),
      // ),
      body: SafeArea(
        child: Container(
          width: fullWidth,
          height: fullheight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: fullheight * 0.5,
                    ),
                    HomeButton(
                      name: 'Love Calculator',
                      routeName: 'calculator',
                      icon: 'add',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    HomeButton(
                      name: 'How to break',
                      routeName: 'break',
                      icon: 'add',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    HomeButton(
                      name: 'Pationate Pictures',
                      routeName: 'ppictures',
                      icon: 'add',
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
