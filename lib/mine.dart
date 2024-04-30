

import 'package:flutter/material.dart';
import 'package:todoapp/calendar.dart';
import 'package:todoapp/dashboard.dart';

class Mine extends StatefulWidget {
  const Mine({super.key});

  @override
  State<Mine> createState() => _MineState();
}

class _MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0,top: 12),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 34,
                      backgroundColor: Colors.blue.shade100,
                      child: Icon(Icons.person,size: 60,),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text("Hi User",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        ""
                      )
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 14),
                    child: Column(
                      children: [
                        Text('Upgrade to PRO',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Unlock all PRO features",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));},
                      child: Icon(Icons.add_task_sharp,size: 28,)),label: ""),
              BottomNavigationBarItem(icon: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => CalenderScreen()));},child: Icon(Icons.calendar_month_outlined,size: 28,)),label: ''),
              BottomNavigationBarItem(icon: InkWell(onTap:(){},child: Icon(Icons.person,size: 28,)),label: '')
            ]),
      ),
    );
  }
}
