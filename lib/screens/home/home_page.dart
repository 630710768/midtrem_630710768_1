// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../cat/CategoryButton.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710768';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    var textTheme = Theme
        .of(context)
        .textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Good Morning',
                    textAlign: TextAlign.center,
                    style: textTheme.headlineMedium),
                Text(studentId,
                    textAlign: TextAlign.center,
                    style: textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black87)),
                Spacer(),
                _buildQuizView(),
                Spacer(),
                _buildButtonPanel(),
                SizedBox(height: 16.0),
              ]
          ),


        ),
      ),
    );
  }

  _buildQuizView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Text(
              '2+2 = ?',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        CategoryButton(
          text: 'A.4',
          color: Colors.lime,
          icon: Icons.cabin,
          isSelected: true,
        ),
        SizedBox(height: 10.0),
        CategoryButton(
          text: 'B.3',
          color: Colors.lime,
          icon: Icons.cabin,
          isSelected: false,
        ),
        SizedBox(height: 10.0),
        CategoryButton(
          text: 'C.2',
          icon: Icons.star,
          color: Colors.orange,
          isSelected: false,
        ),
        SizedBox(height: 10.0),
        CategoryButton(
          text: 'D.1',
          icon: Icons.bookmark,
          color: Colors.green,
          isSelected: false,
        ),
      ],
    );
  }


  _buildButtonPanel() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {

              });
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.amberAccent, //
              minimumSize: Size(120.0, 48.0),
            ),
            child: Text('Back',style: TextStyle(color: Colors.black),),
          ),
          SizedBox(width: 16.0),
          ElevatedButton(
            onPressed: () {
              setState(() {

              });
            },
    style: ElevatedButton.styleFrom(
    primary: Colors.amberAccent, //
    minimumSize: Size(120.0, 48.0),
      ),
    child: Text('Next',style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }

}
