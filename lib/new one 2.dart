import 'package:flutter/material.dart';

enum SingingCharacter { Male, Female }

class cal2 extends StatefulWidget {
  const cal2({super.key});

  @override
  State<cal2> createState() => _cal2State();
}

class _cal2State extends State<cal2> {
  SingingCharacter? _character = SingingCharacter.Male;
  bool clk = false;
  final ab = TextEditingController();
  final ac = TextEditingController();
  final ad = TextEditingController();
  final ae = TextEditingController();
  final af = TextEditingController();
  final ag = TextEditingController();





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/bb.gif"),
            ),
          ),
        ),
        title: Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/bb.gif"),
            ),
          ),
          child: Center(child: Text("BMI",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),),

        ),
        actions: [
          Container(
            height: 100,
            width: 100 ,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/bb.gif"),
              ),
            ),

          )
        ],

      ),
      body: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/bmi.gif"),
                      fit: BoxFit.fill
                  )

              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [SizedBox(width: 20,),
                Text("Age"),
                SizedBox(width: 25,),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: ab,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [SizedBox(width: 20,),
                Text("Height"),
                SizedBox(width: 10,),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: ac,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [SizedBox(width: 20,),
                Text("weight"),
                SizedBox(width: 10,),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: ad,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(children: [SizedBox(width: 20,),
              Text("Result"),
              SizedBox(width: 15,),
              Container(
                width: 300,
                child: TextFormField(
                  controller: ae,
                  decoration: InputDecoration(
                    labelText: "Result",
                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ]
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  child: ListTile(
                    title: Text("Male"),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.Male,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: ListTile(
                    title: Text("Female"),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.Female,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        double a = double.parse(ac.text);
                        double b = double.parse(ad.text);
                        double c = ((b*100*100)/(a*a));
                        ae.text = c.toString();
                        if (c <= 18.5)
                        {
                          showDialog(context: context,

                              builder: (BuildContext context)
                              {
                                return AlertDialog
                                  (
                                  title: Text("Your are Too Thin \n You BMI is: ${c.toStringAsFixed(2)}"),
                                  backgroundColor: Colors.blue,


                                );

                              }

                          );

                        }
                        else if ((18.6 <= c) & (c <= 25))
                        {
                          showDialog(context: context,

                              builder: (BuildContext context)
                              {
                                return AlertDialog
                                  (
                                  title: Text("Your are Normal \n You BMI is: ${c.toStringAsFixed(2)}"),
                                  backgroundColor: Colors.blue,


                                );

                              }

                          );
                        }
                        else if ((25.1 <= c) & (c <= 39.9))
                        {
                          showDialog(context: context,

                              builder: (BuildContext context)
                              {
                                return AlertDialog
                                  (
                                  title: Text("Your are Over Weight \n You BMI is:${c.toStringAsFixed(2)}"),
                                  backgroundColor: Colors.blue,


                                );

                              }

                          );
                        }
                        else
                        {

                          showDialog(context: context,

                              builder: (BuildContext context)
                              {
                                return AlertDialog
                                  (
                                  title: Text("Your are Too obese \n You BMI is:${c.toStringAsFixed(2)}"),
                                  backgroundColor: Colors.blue,


                                );

                              }

                          );
                        }
                      }

                      );
                    },
                    child: Text("Calculate")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(onPressed: () {
                  ab.clear();
                  ac.clear();
                  ad.clear();
                  ae.clear();
                },
                    child: Text("Clear"))
              ],
            ),

          ]
      ),
    );
  }

}
