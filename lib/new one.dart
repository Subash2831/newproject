import 'dart:math';

import 'package:flutter/material.dart';
import 'package:newproject/new%20one%202.dart';


class cal extends StatefulWidget {
  const cal({super.key});

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  final ct = TextEditingController();

  String num1 = "", num2 = "";

  String opt = "";
  bool ck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Text(
            "Calculator",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/cal.gif"), fit: BoxFit.fill),
            ),
          ),
          TextFormField(
            controller: ct,
            keyboardType: TextInputType.none,
            cursorColor: Colors.red,
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.white, fontSize: 50),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder()),
          ),
          Row(
            children: [SizedBox(width: 22,),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const cal2())
                  );
                },
                child: Icon(Icons.calculate,size: 50,),
              ),
            ],
          ),

          SizedBox(
            height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(65, 45), primary: Colors.cyan),
                  onPressed: () {
                    ct.clear();
                    num1 = "";
                    num2 = "";
                    ck = false;
                  },
                  child: Text("C",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(65, 45), primary: Colors.cyan),
                  onPressed: () {
                    ct.text += "%";
                    opt += "%";
                    ck = true;
                  },
                  child: Text("%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30))),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(65, 45), primary: Colors.cyan),
                  onPressed: () {
                    ct.text += "/";
                    opt += "/";
                    ck = true;
                  },
                  child: Text("÷",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30))),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(65, 45), primary: Colors.cyan),
                  onPressed: () {
                    ct.text += "*";
                    opt += "*";
                    ck = true;
                  },
                  child: Text("✖",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30))),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(50, 40),
                    ),
                    onPressed: () {
                      if (ck) {
                        num2 += "7";
                        ct.text = num2;
                      } else {
                        num1 += "7";
                        ct.text = num1;
                      }
                    },
                    child: Text("7")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(50, 40),
                    ),
                    onPressed: () {
                      if (ck) {
                        num2 += "8";
                        ct.text = num2;
                      } else {
                        num1 += "8";
                        ct.text = num1;
                      }
                    },
                    child: Text("8")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(50, 40),
                    ),
                    onPressed: () {
                      if (ck) {
                        num2 += "9";
                        ct.text = num2;
                      } else {
                        num1 += "9";
                        ct.text = num1;
                      }
                    },
                    child: Text("9")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(65, 45), primary: Colors.cyan),
                    onPressed: () {
                      ct.text += "-";
                      opt += "-";
                      ck = true;
                    },
                    child: Text(
                      "-",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(50, 40),
                      ),
                      onPressed: () {
                        if (ck) {
                          num2 += "4";
                          ct.text = num2;
                        } else {
                          num1 += "4";
                          ct.text = num1;
                        }
                      },
                      child: Text("4")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(50, 40),
                      ),
                      onPressed: () {
                        if (ck) {
                          num2 += "5";
                          ct.text = num2;
                        } else {
                          num1 += "5";
                          ct.text = num1;
                        }
                      },
                      child: Text("5")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(50, 40),
                      ),
                      onPressed: () {
                        if (ck) {
                          num2 += "6";
                          ct.text = num2;
                        } else {
                          num1 += "6";
                          ct.text = num1;
                        }
                      },
                      child: Text("6")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(65, 45), primary: Colors.cyan),
                      onPressed: () {
                        ct.text += "+";
                        opt += "+";
                        ck = true;
                      },
                      child: Text("+",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(50, 40),
                        ),
                        onPressed: () {
                          if (ck) {
                            num2 += "1";
                            ct.text = num2;
                          } else {
                            num1 += "1";
                            ct.text = num1;
                          }
                        },
                        child: Text("1")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(50, 40),
                        ),
                        onPressed: () {
                          if (ck) {
                            num2 += "2";
                            ct.text = num2;
                          } else {
                            num1 += "2";
                            ct.text = num1;
                          }
                        },
                        child: Text("2")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(50, 40),
                        ),
                        onPressed: () {
                          if (ck) {
                            num2 += "3";
                            ct.text = num2;
                          } else {
                            num1 += "3";
                            ct.text = num1;
                          }
                        },
                        child: Text("3")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(65, 45), primary: Colors.cyan),
                        onPressed: () {
                          ct.text += "^";
                          opt += "^";
                          ck = true;
                        },
                        child: Text("^",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30))),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(50, 40),
                          ),
                          onPressed: () {
                            if (ck) {
                              num2 += "0";
                              ct.text = num2;
                            } else {
                              num1 += "0";
                              ct.text = num1;
                            }
                          },
                          child: Text("0")),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(65, 45),
                          ),
                          onPressed: () {
                            if (ck) {
                              num2 += ".";
                              ct.text = num2;
                            } else {
                              num1 += ".";
                              ct.text = num1;
                            }
                          },
                          child: Text(".",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(65, 45),
                          ),
                          onPressed: () {
                            ct.text = '√';
                            opt = "√";
                            ck = true;
                          },
                          child: Text("√",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30))),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(65, 45), primary: Colors.cyan),
                        onPressed: () {
                          if (opt == "+") {
                            double a = double.parse(num1);
                            double b = double.parse(num2);

                            double res = a + b;

                            ct.text = res.toString();
                          } else if (opt == "-") {
                            double a = double.parse(num1);
                            double b = double.parse(num2);

                            double res = a - b;

                            ct.text = res.toString();
                          }
                          if (opt == "*") {
                            double a = double.parse(num1);
                            double b = double.parse(num2);

                            double res = a * b;

                            ct.text = res.toString();
                          }
                          if (opt == "%") {
                            double a = double.parse(num1);
                            double b = double.parse(num2);

                            double res = a % b;

                            ct.text = res.toString();
                          }
                          if (opt == "/") {
                            double a = double.parse(num1);
                            double b = double.parse(num2);

                            double res = a / b;
                            ct.text = res.toString();
                          }
                          if (opt == "^") {
                            double a = double.parse(num1.toString());
                            double b = double.parse(num2.toString());
                            num res = pow(a, b);
                            ct.text = res.toString();
                          }
                          if (opt == "√") {
                            double a = double.parse(num2);
                            double res = sqrt(a);
                            ct.text = res.toString();
                          }
                          num1 = ct.text;
                          num2 = "";
                          opt = "";
                          ck = false;
                        },
                        child: Text("=",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 230,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50), primary: Colors.red),
                          onPressed: () {
                            // ck = false;

                            ct.text = ct.text.substring(0, ct.text.length - 1);
                            num1= ct.text;
                            // if (ck) {
                            //   num2 = ct.text;
                            // } else {
                            //   num1 = ct.text;
                            // }
                          },
                          child: Text(
                            "Delete",
                            style: TextStyle(color: Colors.black, fontSize: 32),
                          )),
                    ],
                  )
                ])
              ])
            ])
          ])
        ]
        )
    );
  }
}
