import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color c1 = Colors.grey;
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.all_inclusive,size: 40),
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(5),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue.shade700),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        "Sign in",
                        style: TextStyle(
                            color: c1,
                            fontSize: 20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      // email
                      TextField(
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        decoration: InputDecoration(
                          label: Text("Email"),
                          prefixIcon: Icon(Icons.person),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade700,
                                style: BorderStyle.solid,
                                width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            c1 = Colors.blue.shade700;
                          });
                        },
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      // password

                      TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        decoration: InputDecoration(
                          label: Text("Password"),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue.shade700,
                                style: BorderStyle.solid,
                                width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onTap: () {
                          setState(
                            () {
                              c1 = Colors.blue.shade700;
                            },
                          );
                        },
                      ),

                      SizedBox(height: 20),

                      InkWell(
                        onTap: () {
                          setState(() {
                            c1 = Colors.blue.shade700;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("Log in",style: TextStyle(color: c1,fontWeight: FontWeight.bold),),
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(color: c1,width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
