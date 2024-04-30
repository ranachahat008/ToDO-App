
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/calendar.dart';
import 'package:todoapp/mine.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
 // final List<String> _data = List.empty(growable: true);
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 32,
                            ),
                            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.sun_max_fill))
                          ],
                        ),
                             ],
                    )),
                ListTile(
                  title: Text("Upgrade to pro"),
                  leading: Icon(Icons.pentagon,color: Colors.blue),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("Category"),
                  onTap: (){},
                  leading: Icon(Icons.category_outlined,color: Colors.blue),
                ),
                ListTile(
                  title: Text("Donate"),
                  onTap: (){},
                  leading: Icon(CupertinoIcons.heart_fill,color: Colors.blue),
                ),
                ListTile(
                  title: Text("Theme"),
                  onTap: (){},
                  leading: Icon(CupertinoIcons.paintbrush_fill,color: Colors.blue),
                ),
                ListTile(
                  title: Text("FAQ"),
                  onTap: (){},
                  leading: Icon(CupertinoIcons.question_circle_fill,color: Colors.blue),
                ),
                ListTile(
                  title: Text("Settings"),
                  onTap: (){},
                  leading: Icon(Icons.settings,color: Colors.blue),
                ),
                ListTile(
                  title: Text("Log Out"),
                  onTap: (){},
                  leading: Icon(Icons.logout,color: Colors.blue,),
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("Your ToDo'S",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            bottom: TabBar(
                tabs:[
                  Tab(text: "All"),
                  Tab(text: "Birthdays"),
                  Tab(text: "Events"),
                  Tab(text: "Personal",)
                ]),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 600,
                  child: TabBarView(
                    physics: BouncingScrollPhysics(),
                    dragStartBehavior: DragStartBehavior.start,
                  children:[
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Image(image:
                          NetworkImage(
                              "https://i.ibb.co/SNTFVrq/mobile-note-list-concept-illustration-114360-2347.jpg"
                          )),
                          Text("No task in this category",
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                          ),),
                          Text("Click + to create your task",
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal))
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Image(image:
                          NetworkImage(
                              "https://i.ibb.co/YDPMjgM/group-friends-having-fun-surprise-party-74855-7433.jpg"
                          )),
                          Text("No task in this category",
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                            ),),
                          Text("Click + to create your task",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal))
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Image(image:
                          NetworkImage(
                              "https://i.ibb.co/pfDDNQ5/man-shows-gesture-great-idea-10045-637.jpg"
                          )),
                          Text("No task in this category",
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                            ),),
                          Text("Click + to create your task",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal))
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Image(image:
                          NetworkImage(
                              "https://i.ibb.co/VMLhMqB/couple-bicycle-concept-illustration-114360-4639.jpg"
                          )),
                          Text("No task in this category",
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                            ),),
                          Text("Click + to create your task",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal))
                        ],
                      ),
                    )
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){},
                child: Icon(Icons.add_task_sharp,size: 28,)),label: ""),
              BottomNavigationBarItem(icon: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => CalenderScreen()));},child: Icon(Icons.calendar_month_outlined,size: 28,)),label: ''),
              BottomNavigationBarItem(icon: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => Mine()));},child: Icon(Icons.person,size: 28,)),label: '')
               ]),
          floatingActionButton: FloatingActionButton(
              onPressed: (){
                setState(() {
                  InputSheet(context);
                });
              },
            child: Text("+",
            style: TextStyle(
              fontSize: 30
            ),),
            backgroundColor: Colors.blue,
          ),
        ),
      ),
      ));
  }
}

void InputSheet(context) {
  showModalBottomSheet(context: context,
      builder: (context){
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0,left: 19),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none
                  ),
                  hintText: "Input here"
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
      }
  );
}
