import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NewHome(),
  ));
}
class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _numberController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 8 App"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          //Center(child: Text("Sanaul Parvej",style: TextStyle(fontSize: 25,color: Colors.blue),))
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Your Number",
                hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
                labelText: "Number",
                labelStyle: TextStyle(fontSize: 25,color: Colors.blueAccent),
                helperText: "Please Enter Your Number",
                helperStyle: TextStyle(color: Colors.greenAccent,fontSize: 15),
                // prefixText: "Email: ",
                // prefixStyle: TextStyle(fontSize: 25,color: Colors.black),
                //suffixText: "@gmail.com",
                //suffixStyle: TextStyle(fontSize: 25,color: Colors.black),
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.send),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),


              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 25,color: Colors.blueAccent),
               helperText: "Please Enter Your Email",
               helperStyle: TextStyle(color: Colors.greenAccent,fontSize: 15),
               // prefixText: "Email: ",
               // prefixStyle: TextStyle(fontSize: 25,color: Colors.black),
                //suffixText: "@gmail.com",
                //suffixStyle: TextStyle(fontSize: 25,color: Colors.black),
                prefixIcon: Icon(Icons.mail),
                suffixIcon: Icon(Icons.send),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),


              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 25,color: Colors.blueAccent),
                helperText: "Please Enter Your Password",
                helperStyle: TextStyle(color: Colors.greenAccent,fontSize: 15),
                // prefixText: "Email: ",
                // prefixStyle: TextStyle(fontSize: 25,color: Colors.black),
                //suffixText: "@gmail.com",
                //suffixStyle: TextStyle(fontSize: 25,color: Colors.black),
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.send),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),


              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            _passwordController.text.length>6
            ? print("Password Is Strong")
            : print("Password is week");
            print(_numberController.text);
            print(_emailController.text);
            print(_passwordController.text);
          }, child: Text("Submit",style: TextStyle(fontSize: 20),)),
          
          ElevatedButton(onPressed: (){
            _numberController.clear();
            _emailController.clear();
            _passwordController.clear();
          }, child: Text("Clear",style: TextStyle(fontSize: 20),)),

        ],
      ),
    );
  }
}
