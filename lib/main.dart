
import 'dart:js_util';
import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(""),
    );
  }
}
class CounterPage extends StatefulWidget {
  const CounterPage(String s, {super.key});
  @override
  State<CounterPage> createState() => _CounterPageState();
}
@override
class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  // ignore: non_constant_identifier_names
  int number_add = 0;
 int mul = 1;
  //ignore: non_constant_identifier_names
  void add_counter() {
    setState(() {
      counter++;
    });
  }
  // ignore: non_constant_identifier_names
  void sub_counter()
    {
      setState(() {
        counter--;
      });
    }
    
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        
        title: const Text("Counter Page"),
        actions: [IconButton(onPressed: (){sub_counter();}, icon: const Icon(Icons.remove))],
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: (){setState(() {
              counter =10;
            }); },child:const Icon(Icons.access_alarm_outlined) ,),
            const Text(
              "Counter:",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),

            Text(
              
              '$counter',
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
         
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Nhập vào số nguyên n :",border: OutlineInputBorder()),
                onChanged: (valueee){setState(() 
                {
                  number_add =int.parse(valueee);
                });},
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: 
                Text(
                  "Giá trị mũ bình phương : ${counter * counter}",
                ),
            ),
            Text("Giá trị tính theo hàm mũ  ${counter}^${number_add}: = ${mul}"),
            OutlinedButton(onPressed: (){setState(() {
              mul = 1;
                for(int i = 2;i<number_add;i++)
                {

                    mul*=counter;
                }
            });},child: Text('Tính'),)
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          add_counter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
