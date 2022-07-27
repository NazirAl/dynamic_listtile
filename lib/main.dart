import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(A4Run());

class A4Run extends StatefulWidget {
  const A4Run({Key? key}) : super(key: key);

  @override
  A4RunState createState() => A4RunState();
}

class A4RunState extends State<A4Run> {
  List imgList = [
    Image.asset('assets/images/image.png'),
    Image.asset('assets/images/image.png'),
    Image.asset('assets/images/image.png'),
    Image.asset('assets/images/image.png'),
  ];

  void AddRandomImage() {
    var RandImgIndex = Random().nextInt(3);

    if (RandImgIndex == 0) {
      imgList.add(Image.asset('assets/images/image.png'));
    } else if (RandImgIndex == 1) {
      imgList.add(Image.asset('assets/images/image.png'));
    } else {
      imgList.add(Image.asset('assets/images/image.png'));
    }
  }

  @override
  Widget build(BuildContext context) {
    var ImgCount = imgList.length;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
          title: const Text("Dynamic Add Image List"),
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(children: [
                Text("Image Count:$ImgCount"),
                const SizedBox(width: 45),
                OutlinedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text(
                    "Add Image",
                  ),
                  onPressed: () {
                    setState(() {
                      AddRandomImage();
                    });
                  },
                )
              ]),
              for (var item in imgList)
                Center(
                  child: Container(width: 500, height: 350, child: item),
                )
            ],
          ),
        ),
      ),
    );
  }
}
