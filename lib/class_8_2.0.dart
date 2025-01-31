import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.redAccent,
          centerTitle: true,
        )),
    home: NewActivity(),
  ));
}

class NewActivity extends StatelessWidget {
  NewActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        // backgroundColor: Colors.amberAccent,
        title: Text(
          "App",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email",
                        label: Text("Email"),
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Empty Email Not Allow";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        label: Text("Password"),
                        prefixIcon: Icon(Icons.password),
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 6) {
                          return "Password at last Be 6 digit";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserInfo()));
                          }
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(height: 40),

                    SizedBox(
                      height: 300,
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10
                              ),
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return Container(

                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Icon(Icons.mobile_friendly,size: 30,color: Colors.white,)
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("Flotion Action Button");
        },
        label: Text("Add New"),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome"),
        // centerTitle: true,
        // backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Text(
          "This Is UserPage",
          style: TextStyle(fontSize: 30, color: Colors.orange),
        ),
      ),
    );
  }
}
