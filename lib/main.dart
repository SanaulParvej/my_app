import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    print("This is button");
                  },
                  child: Text(
                    "Button",
                    style: TextStyle(fontSize: 20),
                  ))),
          Icon(Icons.access_time,size: 70,color: Colors.green,),
          TextButton(onPressed: (){
            print("I am text button");
          }, child: Text("Click me",style: TextStyle(fontSize: 30),)),


          InkWell(
            onDoubleTap:(){
              print("i am inkweel");
            } ,
            onLongPress:(){
              print("i am inkweel");
            } ,
            onTap: (){
              print("i am inkweel");
            },

      child:  Container(
            height: 150,
            width: 150,
           // color: Colors.black12,
            margin: EdgeInsets.all(50),
          //  padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(colors: [Colors.yellow,Colors.orange],
              )

            ),
            child: Text("Container",style: TextStyle(color:Colors.redAccent,fontSize: 30),),
          ),
          ),
          GestureDetector(
            onDoubleTap:(){
              print("i am inkweel");
            } ,
            onLongPress:(){
              print("i am inkweel");
            } ,
            onTap: (){
              print("i am inkweel");
            },

      child:  Container(
            height: 150,
            width: 150,
           // color: Colors.black12,
            margin: EdgeInsets.all(50),
          //  padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(colors: [Colors.redAccent,Colors.blueAccent],
              )

            ),
            child: Text("Container",style: TextStyle(color:Colors.redAccent,fontSize: 30),),
          ),
          ),
        ],
      ),
    );
  }
}
