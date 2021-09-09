import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var height = 180.0;

  void opensheet() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Text('data');
        });
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text('your Height is :'),
            content: Text(
                '${height.round()}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
              TextButton(onPressed: () {}, child: Text('ok')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff0a0e21),
      appBar: AppBar(
        title: Text('height diplayer'),
        centerTitle: true,
        backgroundColor: Color(0xff0a0e21),
        elevation: 10,
      ),
      body: Column(
        children: [
          Text(
            'HEIGHT',
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                '${height.round()}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'CM',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Slider(
            value: height,
            onChanged: (val) {
              setState(() {
                height = val;
              });
            },
            min: 80,
            max: 220,
          ),
        
     Container(
        width: double.infinity,
        color: Color(0xffeb1555),
        child: MaterialButton(
          onPressed: opensheet,
          child: Text('Display'),
          height: 50,
        ) ),
    ],
    ));
  }
}
