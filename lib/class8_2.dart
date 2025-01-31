import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NewActivity(),
  ));
}

class NewActivity extends StatelessWidget {
  NewActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text("App",style: TextStyle(fontSize: 30),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.greenAccent),
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 25, color: Colors.blueAccent),
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.send),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Divider(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.greenAccent),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 25, color: Colors.blueAccent),
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.send),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Send",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Clear",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
