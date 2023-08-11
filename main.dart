import 'package:flutter/material.dart';
void main(){
  return runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("Calculator"),
      home: CallClass(),
    );
  }
}

class CallClass extends StatefulWidget{
  @override
  State<CallClass> createState() => _CallClassState();
}

class _CallClassState extends State<CallClass> {

  var n1,n2,result=0;

  final TextEditingController t1 =  TextEditingController();
  final TextEditingController t2 = TextEditingController();

  add(){
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      result = n1 + n2;
    });
  }

  sub(){
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      result = n1 - n2;
    });
  }

  mul(){
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      result = n1 * n2;
    });
  }

  div(){
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      result = n1 ~/ n2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.tealAccent,
       drawer: const Drawer(
         backgroundColor: Colors.black,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Icon(Icons.arrow_back_ios,color: Colors.pinkAccent),
             Expanded(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text("Menu",style: TextStyle(color: Colors.white70,fontSize: 25),)
                  ],
                ),
              ),
            ],
          ),
       ),
        appBar: AppBar(
          title: const Text("Calculator",style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.black12,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.only(bottom: 10,top: 20),
            child: Column(
              verticalDirection: VerticalDirection.down,
              children: [

                Container(
                  margin: const EdgeInsets.only(left: 10,right: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      hintText: "Enter First Number",
                    ),
                    controller: t1, // this is used to take the value
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Container(
                  margin: const EdgeInsets.only(left: 10,right: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "Enter Second Number",
                    ),
                    controller: t2,// this is used to take the value
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Text("Sum is -> $result ",style: const TextStyle(fontSize: 25,)),

                const SizedBox(
                  height: 280,
                ),

                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 50,
                  child: ElevatedButton(
                      onPressed: add,
                      child: const Text("Addition",style: TextStyle(fontSize: 22,color: Colors.black),)),
                ),

                const SizedBox(
                  height: 5,
                ),

                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 50,
                  child: ElevatedButton(
                      onPressed: sub,
                      child: const Text("Subtraction",style: TextStyle(fontSize: 22,color: Colors.black),)),
                ),

                const SizedBox(
                  height: 5,
                ),

                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 50,
                  child: ElevatedButton(
                      onPressed: mul,
                      child: const Text("Multiplication",style: TextStyle(fontSize: 22,color: Colors.black),)),
                ),

                const SizedBox(
                  height: 5,
                ),

                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 50,
                  child: ElevatedButton(
                      onPressed: div,
                      child: const Text("Division",style: TextStyle(fontSize: 22,color: Colors.black),)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

